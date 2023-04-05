import 'package:flutter/material.dart';
import 'package:weatherforecast/core/constants/color_const.dart';
import 'package:weatherforecast/models/weatherforecast_model.dart';

class HomeTempWidget {
  static Row temp(Datum data) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const SizedBox(width: 10),
        Text(
          "${data.temp!.round()}",
          style: TextStyle(
            fontSize: 81,
            fontWeight: FontWeight.w600,
            color: ColorConst.kPrimaryWhite,
          ),
        ),
        Icon(
          Icons.circle_outlined,
          size: 20,
          color: ColorConst.kPrimaryWhite,
        ),
      ],
    );
  }
}
