import 'package:flutter/material.dart';
import 'package:weatherforecast/core/extension/context_ext.dart';
import 'package:weatherforecast/models/weatherforecast_model.dart';

class SearchResultIconWidget {
  static Image icon(Datum data, BuildContext context) {
    return Image.asset(
      "assets/${data.weather!.description!.replaceAll(RegExp("/"), "")}.png",
      height: context.h * 0.22,
      width: context.w * 0.44,
    );
  }
}
