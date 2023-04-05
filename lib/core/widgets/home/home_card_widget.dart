import 'package:flutter/material.dart';
import 'package:weatherforecast/core/constants/color_const.dart';
import 'package:weatherforecast/core/extension/context_ext.dart';
import 'package:weatherforecast/models/weatherforecast_model.dart';

class HomeCardsWidget {
  static Container cards({
    required BuildContext context,
    required Datum data,
    required Widget child,
  }) {
    return Container(
      width: context.w * 0.27,
      height: context.h * 0.18,
      decoration: BoxDecoration(
        gradient: ColorConst.humidty(),
        borderRadius: BorderRadius.circular(10),
      ),
      child: child,
    );
  }
}
