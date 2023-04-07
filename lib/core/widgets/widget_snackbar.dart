import 'package:flutter/material.dart';
import 'package:weatherforecast/core/constants/color_const.dart';

class SnackBarWidget {
  static void showSnackBar(BuildContext context, String content, Color color) {
    final snackBar = SnackBar(
      elevation: 0,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(15),
          topRight: Radius.circular(15),
        ),
      ),
      content: Center(
        child: Text(
          content,
          style: TextStyle(
            color: ColorConst.kPrimaryWhite,
            fontSize: 19,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
      backgroundColor: color,
    );

    ScaffoldMessenger.of(context)
      ..removeCurrentMaterialBanner()
      ..showSnackBar(snackBar);
  }
}
