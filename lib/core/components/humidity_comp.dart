import 'package:flutter/material.dart';
import 'package:weatherforecast/core/constants/color_const.dart';

class HumidityComp {
  static Column humidty({
    required BuildContext context,
    required String icon,
    required String data,
    required String name,
    String? percentage,
    double? size,
    double? textSize,
  }) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        Image.asset(
          "assets/$icon.png",
          fit: BoxFit.cover,
          width: size,
          height: size,
        ),
        Text(
          "$data${percentage ?? "%"}",
          style: TextStyle(
            color: ColorConst.kPrimaryWhite,
            fontSize: textSize ?? 12,
            fontWeight: FontWeight.w600,
          ),
        ),
        Text(
          name,
          style: TextStyle(
            color: ColorConst.kPrimaryWhite,
            fontSize:  12,
            fontWeight: FontWeight.w600,
          ),
        ),
      ],
    );
  }
}
