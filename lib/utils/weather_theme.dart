import 'package:flutter/material.dart';

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
      return Colors.blue;
  }
}