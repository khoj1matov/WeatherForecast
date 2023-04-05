import 'package:flutter/material.dart';
import 'package:weatherforecast/core/constants/color_const.dart';

class DrawerExpandedWidget {
  static Expanded expanded() {
    return Expanded(
      flex: 2,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          const SizedBox(),
          Text(
            "Weather Forecast",
            style: TextStyle(
              color: ColorConst.kPrimaryWhite,
              fontSize: 30,
              fontWeight: FontWeight.bold,
            ),
          ),
        ],
      ),
    );
  }
}
