import 'package:flutter/material.dart';
import 'package:weatherforecast/core/components/humidity_comp.dart';
import 'package:weatherforecast/core/constants/color_const.dart';
import 'package:weatherforecast/core/extension/context_ext.dart';
import 'package:weatherforecast/models/weatherforecast_model.dart';

class HumidityWidget {
  static Container humidity(BuildContext context, Datum data) {
    return Container(
      margin: const EdgeInsets.only(top: 20),
      padding: const EdgeInsets.symmetric(vertical: 10),
      height: context.h * 0.1,
      width: context.w * 0.7,
      decoration: BoxDecoration(
        gradient: ColorConst.humidty(),
        borderRadius: BorderRadius.circular(8),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          HumidityComp.humidty(
            context: context,
            icon: "ambrella",
            data: data.precip!.toStringAsFixed(1),
            name: "Precipitation",
          ),
          HumidityComp.humidty(
            context: context,
            icon: "drop",
            data: data.rh.toString(),
            name: "Humidity",
          ),
          HumidityComp.humidty(
            percentage: "km/h",
            context: context,
            icon: "wind",
            data: data.windSpd!.toStringAsFixed(1),
            name: "Wind Speed",
          ),
        ],
      ),
    );
  }
}
