import 'package:flutter/material.dart';
import 'package:weatherforecast/core/constants/color_const.dart';
import 'package:weatherforecast/core/widgets/widget_to_back_widget.dart';

class CitiesTitleWidget {
  static Row title(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        ToBackWidget.back(context),
        Text(
          "Cities List",
          style: TextStyle(
            color: ColorConst.kPrimaryWhite,
            fontSize: 30,
            fontWeight: FontWeight.bold,
          ),
        ),
        IconButton(
          onPressed: () {
            Navigator.pushNamed(context, '/search');
          },
          iconSize: 40,
          color: ColorConst.kPrimaryWhite,
          icon: Icon(Icons.add),
        ),
      ],
    );
  }
}
