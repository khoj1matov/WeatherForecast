import 'package:flutter/material.dart';
import 'package:weatherforecast/core/constants/color_const.dart';
import 'package:weatherforecast/core/widgets/widget_to_back_widget.dart';

class AboutTitleWidget {
  static Row title(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        ToBackWidget.back(context),
        Text(
          "Weather Forecast",
          style: TextStyle(
            color: ColorConst.kPrimaryWhite,
            fontSize: 35,
            fontWeight: FontWeight.w700,
          ),
        ),
        IconButton(
          onPressed: () {},
          color: ColorConst.kPrimaryTrasparent,
          icon: const Icon(Icons.chevron_left),
        ),
      ],
    );
  }
}
