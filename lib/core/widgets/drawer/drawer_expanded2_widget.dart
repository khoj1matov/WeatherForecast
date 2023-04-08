import 'package:flutter/material.dart';
import 'package:share_plus/share_plus.dart';
import 'package:store_redirect/store_redirect.dart';
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
              StoreRedirect.redirect(
                androidAppId: "com.khoj1matov.weatherforecast",
                iOSAppId: "com.khoj1matov.weatherforecast",
              );
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
              Share.share(
                "https://play.google.com/store/apps/details?id=com.khoj1matov.weatherforecast",
              );
            },
          ),
        ],
      ),
    );
  }
}
