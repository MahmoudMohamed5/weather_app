import 'package:dio/dio.dart';
import 'package:weather_app/models/weather_model/weather_model.dart';

class WeatherService {
  final Dio dio;
  final String apiKey = '87c694beb8b04b99840211136240109';
  final String baseUrl = 'https://api.weatherapi.com/v1/';
  WeatherService(this.dio);
  Future<WeatherModel> getWeather(String city) async {
    try {
      Response response =
          await dio.get('${baseUrl}forecast.json?key=$apiKey&q=$city&days=1');
      return WeatherModel.fromJson(response.data);
    } on DioException catch (e) {
      final String errMessage = e.response?.data[''] ?? 'try again ';
      throw Exception(errMessage);
    }catch (e) {
      throw Exception(e.toString());
    }
  }
}
