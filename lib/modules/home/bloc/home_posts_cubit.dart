import 'package:app_weather/common/event/event_bus_mixin.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:injectable/injectable.dart';
import '../../../repositories/image_repository.dart';
import '../../../models/weather_model.dart';
import 'home_posts_state.dart';

@Injectable()
class HomePostsCubit extends Cubit<HomePostsState> with EventBusMixin {
  final ImageRepository imageRepository;
  HomePostsCubit(this.imageRepository) : super(const HomePostsState());

  Future<void> fetchImages() async {
    emit(state.copyWith(isLoading: true, error: null));
    try {
      final images = await imageRepository.getLatestImages();
      emit(state.copyWith(images: images.data?.links ?? [], isLoading: false));
    } catch (e) {
      emit(state.copyWith(isLoading: false, error: e.toString()));
    }
  }

  Future<void> fetchWeather() async {
    emit(state.copyWith(isLoading: true, error: null));
    try {
      final weather = await imageRepository.getWeather();
      emit(state.copyWith(weather: weather.data ?? [], isLoading: false));
      emit(state.copyWith(selectedLocation: weather.data?.first));
    } catch (e) {
      emit(state.copyWith(isLoading: false, error: e.toString()));
    }
  }

  void selectLocation(WeatherModel? location) {
    emit(state.copyWith(selectedLocation: location));
  }
}
