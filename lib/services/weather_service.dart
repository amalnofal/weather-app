import 'package:dio/dio.dart';
import 'package:weather_app/models/weather_model.dart';

class WeatherService {
  final Dio dio;
  final String baseUrl = 'https://api.weatherapi.com/v1';
  final String apiKey = '974db9f88bae45de967204939252207';
  WeatherService(this.dio);
  Future<WeatherModel> getCurrentWeather({required String cityName}) async {
    try {
      Response response = await dio.get(
        '$baseUrl/forecast.json?key=$apiKey&q=$cityName',
      );
      WeatherModel weatherModel = WeatherModel.fromJson(response.data);
      return weatherModel;
    } on DioException catch (e) {
      final String errorMsg =
          e.response?.data['error']['message'] ??
          'oops there is an error, try later';
      throw Exception(errorMsg);
    } catch (e) {
      throw Exception('oops there is an error');
    }
  }
}

// if (response.statusCode == 200) {
//       WeatherModel weatherModel = WeatherModel.fromJson(response.data);
//     } else {
//       final String errorMsg = response.data['error']['message'];
//       throw Exception(errorMsg);
//     }
// statusمش محتاجنها عشان دايو بتتشك ع ال //
