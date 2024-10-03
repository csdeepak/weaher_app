
import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:week_4/models/weather_model.dart';

class WeatherController {
  final WeatherModel weatherModel = WeatherModel();

  Future<void> fetchWeatherData(String city) async {
    const apikey = 'API_KEY';
    final apiUrl =
        'https://api.openweathermap.org/data/2.5/weather?q=$city&appid=$apikey&units=metric';

    final response = await http.get(Uri.parse(apiUrl));

    if (response.statusCode == 200) {
      final result = jsonDecode(response.body);
      weatherModel.cityName = result['name'];
      weatherModel.temperature = result['main']['temp'].toString();
      weatherModel.iconUrl =
          'http://openweathermap.org/img/w/${result['weather'][0]['icon']}.png';
      weatherModel.status = 1;
    } else if (response.statusCode == 404) {
      weatherModel.status = -1;
      throw FlutterError.fromParts(
        <DiagnosticsNode>[
          ErrorSummary(
              'This place does not exist! \nResponse code: ${response.statusCode}'),
        ],
      );
    }
  }
}
