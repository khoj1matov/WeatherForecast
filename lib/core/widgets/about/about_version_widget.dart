import 'package:flutter/material.dart';
import 'package:weatherforecast/core/constants/color_const.dart';

class AboutVersionWidget {
  static Padding version() {
    return Padding(
      padding: const EdgeInsets.only(bottom: 15),
      child: Text(
        "VERSION 0.0.1",
        style: TextStyle(
          color: ColorConst.kPrimaryWhite,
          fontSize: 15,
        ),
      ),
    );
  }
}
