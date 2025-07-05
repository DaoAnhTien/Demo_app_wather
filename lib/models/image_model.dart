import 'package:equatable/equatable.dart';

class ImageModel extends Equatable {
  const ImageModel({required this.links});

  final List<String> links;

  factory ImageModel.fromLinks(List<String> urls) => ImageModel(links: urls);

  @override
  List<Object?> get props => [links];
}
