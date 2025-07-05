import 'package:equatable/equatable.dart';

class WeatherModel extends Equatable {
  const WeatherModel({
    required this.location,
    required this.temperature,
  });

  final String location;
  final int temperature;

  factory WeatherModel.fromJson(Map<String, dynamic> json) {
    return WeatherModel(
      location: json['location'] as String,
      temperature: json['temperature'] as int,
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'location': location,
      'temperature': temperature,
    };
  }

  factory WeatherModel.fromList(List<Map<String, dynamic>> jsonList) {
    return WeatherModel(
      location: jsonList.first['location'] as String,
      temperature: jsonList.first['temperature'] as int,
    );
  }

  static List<WeatherModel> fromJsonList(List<dynamic> jsonList) {
    return jsonList
        .map((json) => WeatherModel.fromJson(json as Map<String, dynamic>))
        .toList();
  }

  @override
  List<Object?> get props => [location, temperature];

  @override
  String toString() {
    return 'WeatherModel(location: $location, temperature: $temperature°C)';
  }
}
