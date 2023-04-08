import 'package:flutter/material.dart';
import 'package:weatherforecast/core/constants/color_const.dart';
import 'package:weatherforecast/core/widgets/drawer/drawer_body_widget.dart';

class DrawerBackGroundWidget {
  static Container drawerBackground(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        gradient: ColorConst.background(),
        borderRadius: BorderRadius.only(
          topRight: Radius.circular(80),
          bottomRight: Radius.circular(80),
        ),
        image: DecorationImage(
          image: AssetImage("assets/background.png"),
          fit: BoxFit.cover,
        ),
      ),
      child: DrawerBodyWidget.body(context),
    );
  }
}
