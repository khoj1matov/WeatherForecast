import 'package:flutter/material.dart';
import 'package:weatherforecast/core/constants/color_const.dart';

class AboutByWidget {
  static Text by() {
    return Text(
      "by: A'zamjon Xojimatov",
      style: TextStyle(
        color: ColorConst.kPrimaryWhite,
        fontSize: 20,
        fontWeight: FontWeight.w600,
      ),
    );
  }
}
