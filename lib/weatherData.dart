import 'dart:convert';

import 'package:http/http.dart' as http;
import 'package:weather_app/WeatherModel.dart';

class weatherData{
  Future<Weather> getData(var lititude, var longitude) async{
    var uriCall = Uri.parse(
      'http://api.weatherapi.com/v1/current.json?key=9b3df82805044fd0a7a163944220509&q=$lititude,$longitude&aqi=no');
    var response = await http.get(uriCall);
    var body = jsonDecode(response.body);
    return Weather.fromJson(body);
  }
}