import 'package:flutter/material.dart';
import 'package:weatherforecast/core/widgets/drawer/drawer_listtile_widget.dart';
import 'package:weatherforecast/screens/home/home_screen.dart';

class DrawerExpanded3Widget {
  static Expanded expanded3() {
    return Expanded(
      flex: 1,
      child: DrawerListTileWidget.listTile(
        text: "Close Menu",
        icon: Icons.close_rounded,
        onTap: () {
          HomeScreen.drawerKey.currentState!.closeDrawer();
        },
      ),
    );
  }
}
