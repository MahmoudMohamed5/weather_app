import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:weather_app/cubit/weather_cubit.dart';
import 'package:weather_app/main.dart';
import 'package:weather_app/models/weather_model/weather_model.dart';

class WeatherInfoBody extends StatelessWidget {
  const WeatherInfoBody({super.key, required this.weatherModel});
  final WeatherModel weatherModel;
  @override

  /// Weather information body widget
  ///
  /// This widget displays the weather information for a given location.
  /// It uses the [WeatherModel] to display the current weather, forecast,
  /// and location information.
  @override

  /// Weather information body widget
  ///
  /// This widget displays the weather information for a given location.
  /// It uses the [WeatherModel] to display the current weather, forecast,
  /// and location information.
  ///
  /// [weatherModel] is the weather information model.
  ///
  /// Returns a [Container] with a gradient background and the weather
  /// information, including the location name, last updated time, current
  /// temperature, condition icon, and forecast temperatures.
  Widget build(BuildContext context) {
    final WeatherCubit weatherCubit = context.watch<WeatherCubit>();
    final WeatherModel? weatherModel = weatherCubit.weatherModel;

    return Container(
      decoration: BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment.topCenter,
          end: Alignment.bottomCenter,
          colors: [
            getThemeColor(weatherModel?.current?.condition?.text ?? ''),
            getThemeColor(weatherModel?.current?.condition?.text ?? '')[300]!,
            getThemeColor(weatherModel?.current?.condition?.text ?? '')[50]!,
          ],
        ),
      ),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              weatherModel?.location?.name ?? '',
              style: const TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 32,
              ),
            ),
            Text(
              'updated at ${weatherModel?.current?.lastUpdated?.hour} : ${weatherModel?.current?.lastUpdated?.minute}',
              style: const TextStyle(
                fontSize: 24,
              ),
            ),
            const SizedBox(
              height: 32,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Image.network(
                  'https:${weatherModel?.current?.condition?.icon}',
                ),
                Text(
                  '${weatherModel?.current?.tempC?.round()}',
                  style: const TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 32,
                  ),
                ),
                Column(
                  children: [
                    Text(
                      'Maxtemp: ${weatherModel?.forecast?.forecastday?[0].day?.maxtempC?.round()}',
                      style: const TextStyle(
                        fontSize: 16,
                      ),
                    ),
                    Text(
                      'Mintemp: ${weatherModel?.forecast?.forecastday?[0].day?.mintempC?.round()}',
                      style: const TextStyle(
                        fontSize: 16,
                      ),
                    ),
                  ],
                ),
              ],
            ),
            const SizedBox(
              height: 32,
            ),
            Text(
              weatherModel?.current?.condition?.text ?? '',
              style: const TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 32,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
