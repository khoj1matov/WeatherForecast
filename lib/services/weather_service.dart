import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:weatherforecast/models/weatherforecast_model.dart';
import 'package:weatherforecast/provider/cities_list_provider.dart';
import 'package:weatherforecast/provider/search_provider.dart';

class WeatherService {
  static Future<WeatherForecastModel> searchData(BuildContext context) async {
    String cityName = context.watch<SearchProvider>().searchString;
    Response res = await Dio().get(
      "https://api.weatherbit.io/v2.0/forecast/daily?city=$cityName&days=7&key=e98bb938c48b4073b8e6aeafb08ffda0",
    );

    return WeatherForecastModel.fromJson(res.data);
  }

  static Future<WeatherForecastModel> homeData(BuildContext context) async {
    String? cityName = context.watch<CitiesListProvider>().selectedCity;
    Response res = await Dio().get(
      "https://api.weatherbit.io/v2.0/forecast/daily?city=$cityName&days=7&key=e98bb938c48b4073b8e6aeafb08ffda0",
    );
    return WeatherForecastModel.fromJson(res.data);
  }
}
