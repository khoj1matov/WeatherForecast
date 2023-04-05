import 'package:flutter/material.dart';
import 'package:weatherforecast/core/constants/color_const.dart';

class SearchTitleWidget {
  static Row title(String? dataCityName) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          dataCityName!,
          style: TextStyle(
            fontSize: 30,
            fontWeight: FontWeight.w600,
            color: ColorConst.kPrimaryWhite,
          ),
        ),
        const SizedBox(width: 5),
        Icon(
          Icons.location_pin,
          color: ColorConst.kPrimaryWhite,
          size: 30,
        ),
      ],
    );
  }
}
