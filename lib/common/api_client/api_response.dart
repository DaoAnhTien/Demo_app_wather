class ApiResponse {
  ApiResponse({this.success, this.data, this.message});

  ApiResponse.fromJson(Map<String?, dynamic> json) {
    success = json['status'] == 'Success' || json['status'] == true;
    data = json['data'];
    message = json['message'] ?? json['error'];
  }

  bool? success;
  dynamic data;
  String? message;

  bool isSuccess() => success ?? false;
}
