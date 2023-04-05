import 'package:flutter/material.dart';
import 'package:weatherforecast/core/constants/color_const.dart';

class HomeLoadingWidget {
  static Container loading() {
    return Container(
      decoration: BoxDecoration(
        gradient: ColorConst.background(),
        image: const DecorationImage(
          image: AssetImage("assets/background.png"),
        ),
      ),
      child: Center(
        child: Text(
          "Loading..",
          style: TextStyle(
            fontSize: 40,
            fontWeight: FontWeight.bold,
            color: ColorConst.kPrimaryWhite,
          ),
        ),
      ),
    );
  }
}
