import 'package:flutter/material.dart';
import 'package:weatherforecast/core/constants/color_const.dart';

class ToBackWidget {
  static IconButton back(BuildContext context) {
    return IconButton(
      icon: const Icon(Icons.chevron_left),
      color: ColorConst.kPrimaryWhite,
      iconSize: 40,
      onPressed: () {
        Navigator.pop(context);
      },
    );
  }
}
