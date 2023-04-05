import 'package:flutter/material.dart';
import 'package:weatherforecast/core/constants/color_const.dart';
import 'package:weatherforecast/core/widgets/drawer/drawer_body_widget.dart';

class DrawerBackGroundWidget {
  static Container drawerBackground(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        borderRadius: BorderRadius.only(
          bottomRight: Radius.circular(100),
        ),
        image: DecorationImage(
          image: AssetImage("assets/giphy.gif"),
          fit: BoxFit.cover,
        ),
      ),
      child: Container(
        decoration: BoxDecoration(
          gradient: ColorConst.drawerBackground(),
          borderRadius: const BorderRadius.only(
            bottomRight: Radius.circular(100),
          ),
        ),
        child: DrawerBodyWidget.body(context),
      ),
    );
  }
}
