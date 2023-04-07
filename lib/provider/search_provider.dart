import 'package:flutter/foundation.dart';
import 'package:weatherforecast/services/get_cities_service.dart';

class SearchProvider extends ChangeNotifier {
  List<String> items = GetCitiesService.places;
  String searchString = "";

  void inputText(String text) {
    searchString = text;
    notifyListeners();
  }

  void filterSearchResults(String searchText) {
    final suggestions = GetCitiesService.places.where((place) {
      final placeTitel = place.toLowerCase();
      final input = searchText.toLowerCase();

      return placeTitel.contains(input);
    }).toList();

    items = suggestions;
  }
}
