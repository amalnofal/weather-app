import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:weather_app/cubits/get_weather_cubit/get_weather_cubit.dart';
import 'package:weather_app/cubits/get_weather_cubit/get_weather_states.dart';
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
                return MaterialApp(
                  theme: ThemeData(
                    useMaterial3: true,
                    textTheme: ThemeData.light().textTheme.apply(
                      bodyColor: Colors.white,
                    ),
                    colorScheme: ColorScheme.fromSeed(
                      seedColor: getThemeColor(
                        BlocProvider.of<GetWeatherCubit>(
                          context,
                        ).weatherModel?.condition,
                      ),
                    ),
                    appBarTheme: AppBarTheme(
                      backgroundColor: getThemeColor(
                        BlocProvider.of<GetWeatherCubit>(
                          context,
                        ).weatherModel?.condition,
                      ),
                      foregroundColor: Colors.white,
                      elevation: 4, // ده بيضيف ظل للـ AppBar
                      shadowColor:
                          Colors.black54, // عشان النص والايقونات يفضلوا باينين
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

MaterialColor getThemeColor(String? condition) {
  if (condition == null) {
    return Colors.blue;
  }
  switch (condition) {
    case 'Sunny':
      return Colors.amber;
    case 'Clear':
      return Colors.blueGrey;
    case 'Partly cloudy':
      return Colors.blue;
    case 'Cloudy':
    case 'Overcast':
      return Colors.grey;
    case 'Mist':
    case 'Fog':
    case 'Freezing fog':
      return Colors.blueGrey;
    case 'Patchy rain possible':
    case 'Light rain':
    case 'Light rain shower':
      return Colors.lightBlue;
    case 'Moderate rain':
    case 'Heavy rain':
    case 'Torrential rain shower':
    case 'Moderate or heavy rain shower':
      return Colors.indigo;
    case 'Patchy snow possible':
    case 'Light snow':
    case 'Moderate snow':
    case 'Heavy snow':
    case 'Snow shower':
      return Colors.lightBlue;
    case 'Blizzard':
      return Colors.blueGrey;
    case 'Thundery outbreaks possible':
    case 'Patchy light rain with thunder':
    case 'Moderate or heavy rain with thunder':
      return Colors.deepPurple;
    default:
      return Colors.blue; // لون افتراضي لو الحالة مش موجودة
  }
}
