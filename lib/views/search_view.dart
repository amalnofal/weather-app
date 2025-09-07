import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:weather_app/cubits/get_weather_cubit/get_weather_cubit.dart';

class SearchView extends StatelessWidget {
  const SearchView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        iconTheme: IconThemeData(color: Colors.white, size: 30),
        title: Text(
          "Search a City",
          style: TextStyle(fontWeight: FontWeight.bold, fontSize: 25),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16),
        child: Center(
          child: TextField(
            style: TextStyle(color: Colors.black),
            onSubmitted: (value) async {
              var getWeatherCubit = BlocProvider.of<GetWeatherCubit>(context);
              getWeatherCubit.getWeather(cityName: value);
              Navigator.pop(context);
            },

            decoration: InputDecoration(
              contentPadding: EdgeInsets.symmetric(
                vertical: 20,
                horizontal: 16,
              ),
              labelText: 'Search',
              suffixIcon: Icon(Icons.search),
              hintText: 'Enter City Name',
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(25),
                borderSide: BorderSide(color: Colors.blue),
              ),
              // enabledBorder: OutlineInputBorder(
              //   borderRadius: BorderRadius.circular(25),
              //   borderSide: BorderSide(color: Colors.blue),
              // ),
            ),
          ),
        ),
      ),
    );
  }
}
