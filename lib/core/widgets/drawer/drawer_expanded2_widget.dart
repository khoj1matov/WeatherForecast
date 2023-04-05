import 'package:flutter/material.dart';
import 'package:weatherforecast/core/widgets/drawer/drawer_listtile_widget.dart';

class DrawerExpanded2Widget {
  static Expanded expanded2(BuildContext context) {
    return Expanded(
      flex: 8,
      child: Column(
        children: [
          DrawerListTileWidget.listTile(
            text: "Cities List",
            icon: Icons.list_rounded,
            onTap: () {
              Navigator.pushNamed(context, "/cities");
            },
          ),
          DrawerListTileWidget.listTile(
            text: "Search",
            icon: Icons.search,
            onTap: () {
              Navigator.pushNamed(context, "/search");
            },
          ),
          DrawerListTileWidget.listTile(
            text: "About",
            icon: Icons.info_outline_rounded,
            onTap: () {
              Navigator.pushNamed(context, "/about");
            },
          ),
          DrawerListTileWidget.listTile(
            text: "Rate Us",
            icon: Icons.star_border,
            onTap: () {
              Navigator.pushNamed(context, "/rate us");
            },
          ),
          DrawerListTileWidget.listTile(
            text: "Support",
            icon: Icons.support_agent,
            onTap: () {
              Navigator.pushNamed(context, "/support");
            },
          ),
          DrawerListTileWidget.listTile(
            text: "Share This APP",
            icon: Icons.share_outlined,
            onTap: () {
              Navigator.pushNamed(context, "/share");
            },
          ),
        ],
      ),
    );
  }
}
