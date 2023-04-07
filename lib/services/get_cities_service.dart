import 'package:country_state_city/country_state_city.dart';

class GetCitiesService {
  static List<String> places = [];

  static Future getData() async {
    final countries = await getAllCountries();
    final states = await getAllStates();
    final cities = await getAllCities();

    for (var i = 0; i < countries.length; i++) {
      places.add(countries[i].name);
    }
    for (var i = 0; i < states.length; i++) {
      places.add(states[i].name);
    }
    for (var i = 0; i < cities.length; i++) {
      places.add(cities[i].name);
    }
    return;
  }
}
