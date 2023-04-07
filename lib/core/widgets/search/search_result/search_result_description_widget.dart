import 'package:flutter/material.dart';
import 'package:weatherforecast/core/constants/color_const.dart';
import 'package:weatherforecast/models/weatherforecast_model.dart';

class SearchResultDescriptionWidget {
  static Text description(Datum data) {
    return Text(
      data.weather!.description!.replaceAll(RegExp("/"), " "),
      style: TextStyle(
        fontSize: 19,
        fontWeight: FontWeight.w600,
        color: ColorConst.kPrimaryWhite,
      ),
    );
  }
}
