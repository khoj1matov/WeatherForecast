import 'package:flutter/material.dart';
import 'package:weatherforecast/core/constants/color_const.dart';

class CitiesNoPlaceWidget {
  static Center noPlace() {
    return Center(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 30),
        child: Text(
          "You have no place selected!",
          style: TextStyle(
            color: ColorConst.kPrimaryWhite,
            fontSize: 25,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
    );
  }
}
