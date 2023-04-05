import 'package:flutter/material.dart';
import 'package:weatherforecast/core/constants/color_const.dart';
import 'package:weatherforecast/core/extension/context_ext.dart';
import 'package:weatherforecast/core/widgets/home/home_day_forecast_widget.dart';
import 'package:weatherforecast/core/widgets/home/home_description_widget.dart';
import 'package:weatherforecast/core/widgets/home/home_icon_weather_widget.dart';
import 'package:weatherforecast/core/widgets/home/home_listview_forecast_widget.dart';
import 'package:weatherforecast/core/widgets/home/home_loading_widget.dart';
import 'package:weatherforecast/core/widgets/home/home_temp_widget.dart';
import 'package:weatherforecast/core/widgets/home/home_time_widget.dart';
import 'package:weatherforecast/core/widgets/home/home_title_widget.dart';
import 'package:weatherforecast/core/widgets/humidity_widget.dart';
import 'package:weatherforecast/models/weatherforecast_model.dart';
import 'package:weatherforecast/services/weather_service.dart';

class HomeBodyWidget {
  static FutureBuilder<WeatherForecastModel> body(BuildContext context) {
    return FutureBuilder(
      future: WeatherService.citiesSelectData(context),
      builder: ((context, AsyncSnapshot<WeatherForecastModel> snapshot) {
        if (!snapshot.hasData) {
          return HomeLoadingWidget.loading();
        } else if (snapshot.hasError) {
          return const Center(
            child: Text("ERROR"),
          );
        } else {
          var data = snapshot.data!.data![0];
          return Container(
            width: context.w,
            height: context.h * 1.2,
            decoration: BoxDecoration(
              gradient: ColorConst.background(),
              image: const DecorationImage(
                image: AssetImage("assets/background.png"),
                fit: BoxFit.cover,
              ),
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                HomeTitleWidget.title(snapshot, context),
                HomeIconWeatherWidget.iconWeather(data, context),
                HomeDescriptionWidget.titleWeather(data),
                HomeTempWidget.temp(data),
                HomeTimeWidget.time(data),
                HumidityWidget.humidity(context, data),
                HomeDayForeCastWidget.dayForecast(),
                HomeListViewForecastWidget.listView(context, snapshot),
              ],
            ),
          );
        }
      }),
    );
  }
}
