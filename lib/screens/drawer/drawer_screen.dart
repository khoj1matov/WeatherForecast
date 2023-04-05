import 'package:flutter/material.dart';
import 'package:weatherforecast/core/constants/color_const.dart';
import 'package:weatherforecast/core/extension/context_ext.dart';
import 'package:weatherforecast/core/widgets/drawer/drawer_background_widget.dart';

class DrawerScreen {
  static Drawer drawer(BuildContext context) {
    return Drawer(
      elevation: 0,
      backgroundColor: ColorConst.kPrimaryTrasparent,
      width: context.w * 0.87,
      child: DrawerBackGroundWidget.drawerBackground(context),
    );
  }

  
}
