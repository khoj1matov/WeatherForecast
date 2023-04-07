import 'package:flutter/material.dart';
import 'package:weatherforecast/core/constants/color_const.dart';
import 'package:weatherforecast/core/widgets/widget_snackbar.dart';

class CitiesListProvider extends ChangeNotifier {
  String selectedCity = "Tashkent";
  List<String> citiesList = [];

  void isSelectedCity(String city) {
    selectedCity = city;
    notifyListeners();
  }

  void addToList(BuildContext context, String city) {
    for (var i = 0; i < citiesList.length; i++) {
      if (citiesList[i] == city) {
        SnackBarWidget.showSnackBar(
          context,
          "This place is listed😐",
          ColorConst.kPrimaryBlack.withOpacity(0.7),
        );
        return;
      }
    }
    SnackBarWidget.showSnackBar(
      context,
      "$city added successfully👍",
      Colors.green.withOpacity(0.5),
    );
    citiesList.add(city);
    notifyListeners();
  }

  void deleteCity(BuildContext context, int index) {
    for (var i = 0; i < citiesList.length; i++) {
      if (citiesList[i] == citiesList[index]) {
        SnackBarWidget.showSnackBar(
          context,
          "${citiesList[index]} deleted😞",
          Colors.green.withOpacity(0.5),
        );
        citiesList.removeAt(index);
        notifyListeners();
        return;
      }
    }
  }
}
