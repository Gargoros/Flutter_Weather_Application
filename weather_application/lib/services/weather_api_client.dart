import 'dart:convert';

import 'package:http/http.dart' as http;
import '../model/weather_model.dart';
import '../services/weather_api_key.dart';

String apiKey = token;

class WeatherApiClient {
  Future<Weather> getCurrentWeather(String? location) async {
    var weatherUrl = Uri.parse(
        "http://api.openweathermap.org/data/2.5/forecast?q=$location&appid=$apiKey");

    var response = await http.get(weatherUrl);
    var body = jsonDecode(response.body);
    return Weather.fromJson(body);
  }
}
