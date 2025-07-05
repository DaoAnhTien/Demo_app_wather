import 'package:app_weather/common/event/event_bus_mixin.dart';
import 'package:app_weather/modules/detail_image/bloc/image_download_state.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../../../repositories/image_download_service.dart';
import 'package:injectable/injectable.dart';

@injectable
class ImageDownloadCubit extends Cubit<ImageDownloadState> with EventBusMixin {
  ImageDownloadCubit() : super(ImageDownloadInitial());

  Future<void> downloadImage(String imageUrl) async {
    emit(ImageDownloadLoading());

    try {
      final result = await ImageDownloadService.downloadAndCropImage(imageUrl);

      if (result.containsKey('error')) {
        throw Exception(result['error']);
      }

      emit(ImageDownloadSuccess(
        filePath: result['filePath'],
        originalSize: result['originalSize'],
        croppedSize: result['croppedSize'],
      ));
    } catch (e) {
      emit(ImageDownloadError(e.toString()));
    }
  }
}
