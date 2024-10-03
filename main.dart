
import 'package:flutter/material.dart';
import 'package:week_4/controllers/weather_controller.dart';
import 'package:week_4/views/weather_view.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  final WeatherController obj = WeatherController();

  MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter UI Demo',
      home: WeatherScreen(controller: obj),
    );
  }
}
