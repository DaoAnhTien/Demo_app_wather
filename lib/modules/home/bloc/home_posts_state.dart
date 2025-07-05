import 'package:app_weather/models/weather_model.dart';
import 'package:equatable/equatable.dart';

class HomePostsState extends Equatable {
  const HomePostsState({
    this.type,
    this.message,
    this.images = const [],
    this.weather,
    this.isLoading = false,
    this.error,
    this.selectedLocation,
  });

  final String? type;
  final String? message;
  final List<String> images;
  final List<WeatherModel>? weather;
  final bool isLoading;
  final String? error;
  final WeatherModel? selectedLocation;

  HomePostsState copyWith({
    String? type,
    String? message,
    List<String>? images,
    List<WeatherModel>? weather,
    bool? isLoading,
    String? error,
    WeatherModel? selectedLocation,
  }) {
    return HomePostsState(
      type: type ?? this.type,
      message: message ?? this.message,
      images: images ?? this.images,
      weather: weather ?? this.weather,
      isLoading: isLoading ?? this.isLoading,
      error: error,
      selectedLocation: selectedLocation ?? this.selectedLocation,
    );
  }

  @override
  List<Object?> get props => <Object?>[
        type,
        message,
        images,
        weather,
        isLoading,
        error,
        selectedLocation
      ];
}
