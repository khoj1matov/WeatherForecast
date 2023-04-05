import 'package:flutter/material.dart';
import 'package:weatherforecast/core/constants/color_const.dart';
import 'package:weatherforecast/models/weatherforecast_model.dart';
import 'package:weatherforecast/screens/home/home_screen.dart';

class HomeTitleWidget {
  static Padding title(
      AsyncSnapshot<WeatherForecastModel> snapshot, BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 38, left: 10, right: 10),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          IconButton(
            icon: Icon(
              Icons.menu,
              size: 30,
              color: ColorConst.kPrimaryWhite,
            ),
            onPressed: () {
              HomeScreen.drawerKey.currentState!.openDrawer();
            },
          ),
          Text(
            snapshot.data!.cityName!,
            style: TextStyle(
              fontSize: 30,
              fontWeight: FontWeight.w600,
              color: ColorConst.kPrimaryWhite,
            ),
          ),
          IconButton(
            icon: Icon(
              Icons.search,
              size: 30,
              color: ColorConst.kPrimaryWhite,
            ),
            onPressed: () {
              Navigator.pushNamed(context, "/search");
            },
          ),
        ],
      ),
    );
  }
}
