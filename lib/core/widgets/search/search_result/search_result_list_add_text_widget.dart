import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:weatherforecast/core/constants/color_const.dart';
import 'package:weatherforecast/core/extension/context_ext.dart';
import 'package:weatherforecast/models/weatherforecast_model.dart';
import 'package:weatherforecast/provider/cities_list_provider.dart';
import 'package:weatherforecast/provider/search_provider.dart';

class SearchResultAddToListWidget {
  static Padding addToList(
    BuildContext context,
    AsyncSnapshot<WeatherForecastModel> snapshot,
    SearchProvider sp,
  ) {
    return Padding(
      padding: const EdgeInsets.only(right: 10, top: 5),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          IconButton(
            icon: const Icon(Icons.chevron_left),
            color: ColorConst.kPrimaryWhite,
            iconSize: 40,
            onPressed: () {
              sp.inputText("");
            },
          ),
          InkWell(
            child: Container(
              padding: EdgeInsets.symmetric(horizontal: 10),
              height: context.h * 0.07,
              width: context.w * 0.839,
              decoration: BoxDecoration(
                gradient: ColorConst.cities(),
                borderRadius: BorderRadius.circular(8),
                border: Border.all(
                  width: 2,
                  color: ColorConst.kPrimaryWhite,
                ),
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Add this place to the list",
                    style: TextStyle(
                      fontSize: 19,
                      fontWeight: FontWeight.w600,
                      color: ColorConst.kPrimaryWhite,
                    ),
                  ),
                  Icon(
                    Icons.add_location_outlined,
                    color: ColorConst.kPrimaryWhite,
                    size: 25,
                  ),
                ],
              ),
            ),
            onTap: () {
              Provider.of<CitiesListProvider>(
                context,
                listen: false,
              ).addToList(
                context,
                snapshot.data!.cityName.toString(),
              );
            },
          ),
        ],
      ),
    );
  }
}
