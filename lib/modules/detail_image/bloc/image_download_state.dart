import 'package:equatable/equatable.dart';

abstract class ImageDownloadState extends Equatable {
  const ImageDownloadState();

  @override
  List<Object?> get props => [];
}

class ImageDownloadInitial extends ImageDownloadState {}

class ImageDownloadLoading extends ImageDownloadState {}

class ImageDownloadSuccess extends ImageDownloadState {
  final String filePath;
  final int originalSize;
  final int croppedSize;

  const ImageDownloadSuccess({
    required this.filePath,
    required this.originalSize,
    required this.croppedSize,
  });

  @override
  List<Object?> get props => [filePath, originalSize, croppedSize];
}

class ImageDownloadError extends ImageDownloadState {
  final String message;

  const ImageDownloadError(this.message);

  @override
  List<Object?> get props => [message];
}
