import 'package:flutter/material.dart';
import 'package:weatherforecast/core/constants/color_const.dart';
import 'package:weatherforecast/core/extension/context_ext.dart';
import 'package:weatherforecast/core/widgets/humidity_widget.dart';
import 'package:weatherforecast/core/widgets/search/search_description_widget.dart';
import 'package:weatherforecast/core/widgets/search/search_icon_widget.dart';
import 'package:weatherforecast/core/widgets/search/search_list_add_text_widget.dart';
import 'package:weatherforecast/core/widgets/search/search_temp_widget.dart';
import 'package:weatherforecast/core/widgets/search/search_time_widget.dart';
import 'package:weatherforecast/core/widgets/search/search_title_widget.dart';
import 'package:weatherforecast/core/widgets/widget_divider.dart';
import 'package:weatherforecast/models/weatherforecast_model.dart';
import 'package:weatherforecast/services/weather_service.dart';

class SearchResultWidget {
  static SizedBox searchResult(BuildContext context) {
    return SizedBox(
      width: context.w,
      height: context.h,
      child: FutureBuilder(
        future: WeatherService.selectedData(context),
        builder: ((context, AsyncSnapshot<WeatherForecastModel> snapshot) {
          if (!snapshot.hasData) {
            return Center(
              child: Text(
                "Loading..",
                style: TextStyle(
                  fontSize: 40,
                  fontWeight: FontWeight.bold,
                  color: ColorConst.kPrimaryWhite,
                ),
              ),
            );
          } else if (snapshot.hasError) {
            return Center(
              child: Text(
                "ERROR",
                style: TextStyle(
                  fontSize: 40,
                  fontWeight: FontWeight.bold,
                  color: ColorConst.kPrimaryWhite,
                ),
              ),
            );
          } else {
            var data = snapshot.data!.data![0];
            return Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                SizedBox(height: context.h * 0.09),
                Column(
                  children: [
                    SearchAddToListWidget.addToList(snapshot),
                    DividerWidget.divider(),
                  ],
                ),
                SearchTitleWidget.title(snapshot.data!.cityName),
                SearchTimeWidget.time(data),
                SearchIconWidget.icon(data, context),
                SearchDescriptionWidget.description(data),
                SearchTempWidget.temp(data),
                HumidityWidget.humidity(context, data),
                SizedBox(),
              ],
            );
          }
        }),
      ),
    );
  }
}
