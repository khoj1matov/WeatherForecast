import 'package:flutter/material.dart';
import 'package:jiffy/jiffy.dart';
import 'package:weatherforecast/core/constants/color_const.dart';
import 'package:weatherforecast/core/extension/context_ext.dart';
import 'package:weatherforecast/models/weatherforecast_model.dart';

class HomeListViewForecastWidget {
  static SizedBox listView(
    BuildContext context,
    AsyncSnapshot<WeatherForecastModel> snapshot,
  ) {
    return SizedBox(
      width: context.w,
      height: context.h * 0.23,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: snapshot.data!.data!.length - 1,
        itemBuilder: (_, __) {
          var data = snapshot.data!.data![__ + 1];
          return GestureDetector(
            onTap: () {},
            child: Container(
              margin: const EdgeInsets.all(10),
              width: context.w * 0.25,
              decoration: BoxDecoration(
                gradient: ColorConst.humidty(),
                borderRadius: BorderRadius.circular(10),
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Text(
                    Jiffy.parse(data.datetime.toString()).EEEE,
                    style: TextStyle(
                      color: ColorConst.kPrimaryWhite,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                  Image.asset(
                    "assets/${data.weather!.description!.replaceAll(RegExp("/"), "")}.png",
                    height: context.h * 0.1,
                    width: context.w * 0.2,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "${data.temp!.round()}",
                        style: TextStyle(
                          color: ColorConst.kPrimaryWhite,
                          fontSize: 30,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                      Icon(
                        Icons.circle_outlined,
                        size: 10,
                        color: ColorConst.kPrimaryWhite,
                      ),
                    ],
                  ),
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}
