part of 'weather_cubit.dart';

sealed class WeatherState {}

final class WeatherInitial extends WeatherState {}

final class WeatherSuccess extends WeatherState {
  final WeatherModel weatherModel;
  WeatherSuccess(this.weatherModel);
}

final class WeatherFailure extends WeatherState {
  final String errMessage;
  WeatherFailure(this.errMessage);
}