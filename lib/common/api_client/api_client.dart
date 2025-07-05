import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';
import '../../configs/build_config.dart';
import '../../generated/l10n.dart';

import '../event/event_bus_event.dart';
import '../event/event_bus_mixin.dart';
import 'api_response.dart';

@singleton
class ApiClient with EventBusMixin {
  ApiClient({required this.dio}) {
    dio.options.baseUrl = BuildConfig.kBaseUrl;
    dio.options.connectTimeout = const Duration(seconds: 30);
    dio.options.receiveTimeout = const Duration(seconds: 30);
    dio.interceptors.add(LogInterceptor(responseBody: true, requestBody: true));
  }

  final Dio dio;

  Future<ApiResponse> post({
    required String path,
    dynamic data,
    ProgressCallback? onSendProgress,
  }) async {
    return responseWrapper(
        dio.post<dynamic>(path, data: data, onSendProgress: onSendProgress));
  }

  Future<ApiResponse> put({required String path, dynamic data}) async {
    return responseWrapper(dio.put<dynamic>(path, data: data));
  }

  Future<ApiResponse> patch({required String path, dynamic data}) async {
    return responseWrapper(dio.patch<dynamic>(path, data: data));
  }

  Future<ApiResponse> delete({required String path, dynamic data}) async {
    return responseWrapper(dio.delete<dynamic>(path, data: data));
  }

  Future<ApiResponse> get(
      {required String path, Map<String, dynamic>? queryParameters}) async {
    return responseWrapper(dio.get<dynamic>(
      path,
      queryParameters: queryParameters,
    ));
  }

  Future<ApiResponse> responseWrapper(Future<Response<dynamic>> func) async {
    try {
      final Response<dynamic> response = await func;

      // Kiểm tra nếu response.data là array (như mocki.io)
      if (response.data is List) {
        return ApiResponse(
          success: true,
          data: response.data,
          message: null,
        );
      }

      // Xử lý trường hợp response.data là Map (API thông thường)
      if (response.data is Map<String?, dynamic>) {
        Map<String?, dynamic> data = response.data as Map<String?, dynamic>;
        if (data['code'] == 401) {
          shareEvent(LogoutEvent());
        }
        return ApiResponse.fromJson(data);
      }

      // Fallback cho các trường hợp khác
      return ApiResponse(
        success: true,
        data: response.data,
        message: null,
      );
    } on DioError catch (e) {
      if (e.response?.statusCode == 401) {
        shareEvent(LogoutEvent());
      }
      if (e.response?.statusCode == 403) {
        return ApiResponse(
          success: false,
          message: S.current.noPermission,
        );
      }
      if (e.response?.statusCode == 500) {
        if (e.response != null) {
          String errorMsg = e.message ?? '';
          if (e.response?.data is Map) {
            errorMsg = e.response?.data['message'] ?? errorMsg;
          }
          shareEvent(ApiExceptionEvent(
              baseUrl: e.requestOptions.path,
              method: e.requestOptions.method,
              body: e.requestOptions.data,
              errorMsg: errorMsg));
        }
        return ApiResponse(success: false);
      }
      if (e.type == DioExceptionType.connectionTimeout ||
          e.type == DioExceptionType.unknown) {
        return ApiResponse(
          success: false,
          message: S.current.networkErrorMessage,
        );
      }
      if (e.response == null ||
          e.response?.data == null ||
          e.response?.data is! Map) {
        return ApiResponse(
          success: false,
          message: S.current.somethingWentWrong,
        );
      }
      return ApiResponse.fromJson(e.response?.data as Map<String?, dynamic>);
    }
  }
}
