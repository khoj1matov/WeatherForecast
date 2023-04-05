import 'package:flutter/foundation.dart';

class SearchProvider extends ChangeNotifier {
  String? cityName;

  void inputText(String text) {
    cityName = text;
    notifyListeners();
  }
}
