import 'package:dio/dio.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:weather_app/models/weather_model/weather_model.dart';
import 'package:weather_app/services/weather_service.dart';

part 'weather_state.dart';

class WeatherCubit extends Cubit<WeatherState> {
  WeatherCubit() : super(WeatherInitial());

  getWeather(String city) async {
    
    try {
      WeatherModel weatherModel = await WeatherService(Dio()).getWeather(city);
      emit(WeatherSuccess(weatherModel));
     
    } on Exception catch (e) {
      emit(WeatherFailure(e.toString()));
    }
  }
}
