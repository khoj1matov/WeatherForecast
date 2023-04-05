import 'package:flutter/material.dart';
import 'package:weatherforecast/core/constants/color_const.dart';

class SearchBordersWidget {
  static OutlineInputBorder borders({Color? color}) {
    return OutlineInputBorder(
      borderRadius: const BorderRadius.all(Radius.circular(7.0)),
      borderSide: BorderSide(
        color: color ?? ColorConst.kPrimaryWhite,
        width: 2
      ),
    );
  }
}
