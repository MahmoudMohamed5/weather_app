import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:weather_app/cubit/weather_cubit.dart';
import 'package:weather_app/views/search_view.dart';
import 'package:weather_app/views/widgets/no_weather_body.dart';
import 'package:weather_app/views/widgets/weather_info_body.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Weather App'),
        actions: [
          IconButton(
            onPressed: () async {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => const SearchView(),
                ),
              );
            },
            icon: const Icon(Icons.search),
          ),
        ],
      ),
      body: BlocBuilder<WeatherCubit, WeatherState>(
        builder: (context, state) {
          if(state is WeatherSuccess){
            return WeatherInfoBody(weatherModel: state.weatherModel); 
          }else if(state is WeatherFailure){
            return Center(
              child: Text(state.errMessage),
            );
          }else{
            return const NoWeatherBody();
          }
        },
      ),
    );
  }
}
