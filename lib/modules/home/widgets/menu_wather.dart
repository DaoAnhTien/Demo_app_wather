import 'package:app_weather/models/weather_model.dart';
import 'package:flutter/material.dart';

class MenuWeather extends StatelessWidget {
  const MenuWeather({super.key, required this.weather});
  final List<WeatherModel> weather;

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          Text(weather.first.location),
          Text(weather.first.temperature.toString()),
        ],
      ),
    );
  }
}
