class LogoutEvent {}

class ApiExceptionEvent {
  const ApiExceptionEvent(
      {required this.baseUrl,
      required this.method,
      this.body,
      required this.errorMsg});

  final String baseUrl;
  final String method;
  final dynamic body;
  final String errorMsg;
}
