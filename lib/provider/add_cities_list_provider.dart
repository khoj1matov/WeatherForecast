import 'package:flutter/foundation.dart';

class AddCitiesListProvider extends ChangeNotifier {
  bool check = false;

  void isChecked() {
    check = !check;
    notifyListeners();
  }
}
