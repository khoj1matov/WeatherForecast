import 'package:flutter/material.dart';
import 'package:jiffy/jiffy.dart';
import 'package:weatherforecast/core/constants/color_const.dart';
import 'package:weatherforecast/models/weatherforecast_model.dart';

class HomeTimeWidget {
  static Text time(Datum data) {
    return Text(
      Jiffy.parse(data.datetime.toString()).yMMMMEEEEd,
      style: TextStyle(
        color: ColorConst.kPrimaryWhite,
        fontWeight: FontWeight.w500,
      ),
    );
  }
}
