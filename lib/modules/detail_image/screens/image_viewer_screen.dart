import 'package:app_weather/modules/detail_image/bloc/image_download_state.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../bloc/image_download_cubit.dart';

class ImageViewerScreen extends StatelessWidget {
  final String imageUrl;
  const ImageViewerScreen({Key? key, required this.imageUrl}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => ImageDownloadCubit(),
      child: BlocListener<ImageDownloadCubit, ImageDownloadState>(
        listener: (context, state) {
          if (state is ImageDownloadLoading) {
            showDialog(
              context: context,
              barrierDismissible: false,
              builder: (BuildContext context) {
                return const AlertDialog(
                  content: Row(
                    children: [
                      CircularProgressIndicator(),
                      SizedBox(width: 20),
                      Text('Đang tải và xử lý ảnh...'),
                    ],
                  ),
                );
              },
            );
          } else if (state is ImageDownloadSuccess) {
            Navigator.of(context).pop();

            ScaffoldMessenger.of(context).showSnackBar(
              SnackBar(
                content:
                    Text('Đã lưu ảnh thành công! ${state.filePath.toString()}'),
                backgroundColor: Colors.green,
                duration: const Duration(seconds: 5),
              ),
            );
          } else if (state is ImageDownloadError) {
            Navigator.of(context).pop();
            print(state.message);
            ScaffoldMessenger.of(context).showSnackBar(
              SnackBar(
                content: Text('Lỗi: ${state.message}'),
                backgroundColor: Colors.red,
              ),
            );
          }
        },
        child: _ImageViewerContent(imageUrl: imageUrl),
      ),
    );
  }
}

class _ImageViewerContent extends StatelessWidget {
  final String imageUrl;

  const _ImageViewerContent({required this.imageUrl});

  void _downloadImage(BuildContext context) {
    context.read<ImageDownloadCubit>().downloadImage(imageUrl);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Stack(
        children: [
          Center(
            child: InteractiveViewer(
              child: Image.network(imageUrl),
            ),
          ),
          Positioned(
            top: 20,
            right: 20,
            child: Row(
              children: [
                IconButton(
                  onPressed: () {
                    _downloadImage(context);
                  },
                  icon: Icon(Icons.download, color: Colors.white),
                ),
                IconButton(
                  onPressed: () {
                    Navigator.pop(context);
                  },
                  icon: Icon(Icons.close, color: Colors.white),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
