import 'package:flutter/material.dart';
import 'package:weatherforecast/core/constants/color_const.dart';

class HomeDayForeCastWidget {
  static Text dayForecast() {
    return Text(
      "7-Day Forecast",
      style: TextStyle(
        color: ColorConst.kPrimaryWhite,
        fontWeight: FontWeight.w500,
      ),
    );
  }
}
