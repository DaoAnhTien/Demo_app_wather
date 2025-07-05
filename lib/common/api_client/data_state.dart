abstract class DataState<T> {
  const DataState({this.data, this.message});

  final T? data;
  final String? message;
}

class DataSuccess<T> extends DataState<T> {
  const DataSuccess(T? data) : super(data: data);
}

class DataFailed<T> extends DataState<T> {
  const DataFailed(String message) : super(message: message);
}
