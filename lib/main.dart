import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:weather_app/cubits/get_weather_cubit/get_weather_cubit.dart';
import 'package:weather_app/cubits/get_weather_cubit/get_weather_states.dart';
import 'package:weather_app/utils/weather_theme.dart';
import 'package:weather_app/views/home_view.dart';

void main() {
  runApp(const WeatherApp());
}

class WeatherApp extends StatelessWidget {
  const WeatherApp({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => GetWeatherCubit(),
      child: Builder(
        builder:
            (context) => BlocBuilder<GetWeatherCubit, WeatherState>(
              builder: (context, state) {
                final condition =
                    BlocProvider.of<GetWeatherCubit>(
                      context,
                    ).weatherModel?.condition;
                final themeColor = getThemeColor(condition);

                return MaterialApp(
                  theme: ThemeData(
                    useMaterial3: true,
                    textTheme: ThemeData.light().textTheme.apply(
                      bodyColor: Colors.white,
                    ),
                    colorScheme: ColorScheme.fromSeed(seedColor: themeColor),
                    appBarTheme: AppBarTheme(
                      backgroundColor: themeColor,
                      foregroundColor: Colors.white,
                      elevation: 4,
                      shadowColor: Colors.black54,
                    ),
                  ),
                  home: HomeView(),
                  debugShowCheckedModeBanner: false,
                );
              },
            ),
      ),
    );
  }
}
