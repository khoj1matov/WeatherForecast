import 'package:flutter/material.dart';
import 'package:weatherforecast/core/widgets/drawer/drawer_expanded2_widget.dart';
import 'package:weatherforecast/core/widgets/drawer/drawer_expanded3_widget.dart';
import 'package:weatherforecast/core/widgets/drawer/drawer_expanded_widget.dart';
import 'package:weatherforecast/core/widgets/widget_divider.dart';

class DrawerBodyWidget {
  static Column body(BuildContext context) {
    return Column(
      children: [
        DrawerExpandedWidget.expanded(),
        DividerWidget.divider(),
        DrawerExpanded2Widget.expanded2(context),
        DividerWidget.divider(),
        DrawerExpanded3Widget.expanded3(),
      ],
    );
  }
}
