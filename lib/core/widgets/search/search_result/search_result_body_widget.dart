import 'package:flutter/material.dart';
import 'package:weatherforecast/core/constants/color_const.dart';
import 'package:weatherforecast/core/extension/context_ext.dart';
import 'package:weatherforecast/core/widgets/widget_humidity.dart';
import 'package:weatherforecast/core/widgets/search/search_result/search_result_description_widget.dart';
import 'package:weatherforecast/core/widgets/search/search_result/search_result_icon_widget.dart';
import 'package:weatherforecast/core/widgets/search/search_result/search_result_list_add_text_widget.dart';
import 'package:weatherforecast/core/widgets/search/search_result/search_result_temp_widget.dart';
import 'package:weatherforecast/core/widgets/search/search_result/search_result_time_widget.dart';
import 'package:weatherforecast/core/widgets/search/search_result/search_result_title_widget.dart';
import 'package:weatherforecast/models/weatherforecast_model.dart';
import 'package:weatherforecast/provider/search_provider.dart';
import 'package:weatherforecast/services/weather_service.dart';

class SearchResulBodytWidget {
  static SizedBox searchResult(BuildContext context, SearchProvider sp) {
    return SizedBox(
      width: context.w,
      height: context.h,
      child: FutureBuilder(
        future: WeatherService.searchData(context),
        builder: ((context, AsyncSnapshot<WeatherForecastModel> snapshot) {
          if (!snapshot.hasData) {
            return Column(
              children: [
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      SizedBox(
                        width: context.w,
                      ),
                      Padding(
                        padding: const EdgeInsets.only(bottom: 100),
                        child: IconButton(
                          icon: const Icon(Icons.chevron_left),
                          color: ColorConst.kPrimaryWhite,
                          iconSize: 40,
                          onPressed: () {
                            sp.inputText("");
                          },
                        ),
                      ),
                    ],
                  ),
                ),
                Expanded(
                  child: Text(
                    "Loading...",
                    style: TextStyle(
                      fontSize: 40,
                      fontWeight: FontWeight.bold,
                      color: ColorConst.kPrimaryWhite,
                    ),
                  ),
                ),
              ],
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
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                SizedBox(height: context.h * 0.085),
                SearchResultAddToListWidget.addToList(context, snapshot, sp),
                SearchResultTitleWidget.title(snapshot.data!.cityName),
                SearchResultTimeWidget.time(data),
                SearchResultIconWidget.icon(data, context),
                SearchResultDescriptionWidget.description(data),
                SearchResultTempWidget.temp(data),
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
