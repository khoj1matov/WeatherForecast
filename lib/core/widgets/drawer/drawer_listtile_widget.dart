import 'package:flutter/material.dart';
import 'package:weatherforecast/core/constants/color_const.dart';

class DrawerListTileWidget {
  static ListTile listTile({
    required String text,
    required IconData icon,
    required Function() onTap,
  }) {
    return ListTile(
      iconColor: ColorConst.kPrimaryWhite,
      textColor: ColorConst.kPrimaryWhite,
      leading: Icon(icon, size: 30),
      title: Text(
        text,
        style: TextStyle(fontSize: 20),
      ),
      onTap: onTap,
    );
  }
}
