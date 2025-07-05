import 'package:app_weather/data/remote/member/image_service.dart';
import 'package:app_weather/models/image_model.dart';
import 'package:app_weather/models/weather_model.dart';
import 'package:injectable/injectable.dart';

import '../common/api_client/data_state.dart';

abstract class ImageRepository {
  Future<DataState<ImageModel>> getLatestImages();
  Future<DataState<List<WeatherModel>>> getWeather();
}

@LazySingleton(as: ImageRepository)
class ImageRepositoryImpl implements ImageRepository {
  final ImageService _imageService;

  ImageRepositoryImpl({required ImageService imageService})
      : _imageService = imageService;

  @override
  Future<DataState<ImageModel>> getLatestImages() {
    return _imageService.getLatestImages();
  }

  @override
  Future<DataState<List<WeatherModel>>> getWeather() {
    return _imageService.getWeather();
  }
}
