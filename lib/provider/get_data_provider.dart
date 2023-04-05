import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:weatherforecast/core/mock/cities_mock.dart';
import 'package:weatherforecast/models/weatherforecast_model.dart';

class GetDataProvider extends ChangeNotifier {
  List<Future<WeatherForecastModel>> futures = [];

  void checkCities(BuildContext context) {
    int index = CitiesMock.mapOfCities.length;
    for (var i = 0; i < index; i++) {
      if (CitiesMock.mapOfCities[i]["isChecked"] == false) {
        Future<WeatherForecastModel> citiesSelectData(
          BuildContext context,
        ) async {
          String cityName = CitiesMock.mapOfCities[i]["name"];
          debugPrint(cityName);
          Response res = await Dio().get(
            "https://api.weatherbit.io/v2.0/forecast/daily?city=$cityName&days=7&key=1e83dc94208a431681efcf34612489e2",
          );
          return WeatherForecastModel.fromJson(res.data);
        }

        futures.add(citiesSelectData(context));
      }
    }
    // notifyListeners();
  }
}
