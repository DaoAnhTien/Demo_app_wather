import 'package:app_weather/models/image_model.dart';
import 'package:app_weather/models/weather_model.dart';
import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';

import '../../../common/api_client/api_client.dart';
import '../../../common/api_client/api_response.dart';
import '../../../common/api_client/data_state.dart';
import '../api_endpoint.dart';

abstract class ImageService {
  Future<DataState<ImageModel>> getLatestImages();
  Future<DataState<List<WeatherModel>>> getWeather();
}

@LazySingleton(as: ImageService)
class ImageServiceImpl implements ImageService {
  ImageServiceImpl(this._apiClient);

  final ApiClient _apiClient;

  @override
  Future<DataState<ImageModel>> getLatestImages() async {
    try {
      final ApiResponse result =
          await _apiClient.get(path: ApiEndpoint.getLatestImages);
      if (result.data != null) {
        if (result.data is List) {
          final List<dynamic> urls = result.data as List;
          if (urls.isNotEmpty) {
            final List<String> stringUrls = urls
                .where((url) => url is String)
                .map((url) => url as String)
                .toList();

            return DataSuccess<ImageModel>(
              ImageModel.fromLinks(stringUrls),
            );
          }
        }
        return DataFailed<ImageModel>('Invalid data format');
      } else {
        return DataFailed<ImageModel>(result.message ?? '');
      }
    } on DioError catch (e) {
      return DataFailed<ImageModel>(e.message ?? '');
    } on Exception catch (e) {
      return DataFailed<ImageModel>(e.toString());
    }
  }

  @override
  Future<DataState<List<WeatherModel>>> getWeather() async {
    try {
      final ApiResponse result =
          await _apiClient.get(path: ApiEndpoint.getWeather);
      if (result.data != null) {
        if (result.data is List) {
          final List<dynamic> weatherList = result.data as List;
          if (weatherList.isNotEmpty) {
            return DataSuccess<List<WeatherModel>>(
              WeatherModel.fromJsonList(weatherList),
            );
          }
        } else if (result.data is Map<String, dynamic>) {
          return DataSuccess<List<WeatherModel>>([
            WeatherModel.fromJson(result.data as Map<String, dynamic>),
          ]);
        }
        return DataFailed<List<WeatherModel>>('Invalid data format');
      } else {
        return DataFailed<List<WeatherModel>>(result.message ?? '');
      }
    } on DioError catch (e) {
      return DataFailed<List<WeatherModel>>(e.message ?? '');
    } on Exception catch (e) {
      return DataFailed<List<WeatherModel>>(e.toString());
    }
  }
}
