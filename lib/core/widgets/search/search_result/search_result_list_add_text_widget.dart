import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:weatherforecast/core/constants/color_const.dart';
import 'package:weatherforecast/core/mock/cities_mock.dart';
import 'package:weatherforecast/models/weatherforecast_model.dart';
import 'package:weatherforecast/provider/add_cities_list_provider.dart';
import 'package:weatherforecast/provider/search_provider.dart';

class SearchResultAddToListWidget {
  static Padding addToList(
    AsyncSnapshot<WeatherForecastModel> snapshot,
    SearchProvider sp,
  ) {
    return Padding(
      padding: const EdgeInsets.only(right: 5),
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
          Row(
            children: [
              Text(
                "Add this place to the list",
                style: TextStyle(
                  fontSize: 19,
                  fontWeight: FontWeight.w600,
                  color: ColorConst.kPrimaryWhite,
                ),
              ),
              ChangeNotifierProvider(
                create: (context) => AddCitiesListProvider(),
                child: Consumer<AddCitiesListProvider>(
                  builder: (context, checkbox, child) => Checkbox(
                    checkColor: Colors.white,
                    fillColor: MaterialStateProperty.all(
                      ColorConst.kPrimaryWhite,
                    ),
                    value: checkbox.check,
                    shape: const CircleBorder(),
                    onChanged: (bool? value) {
                      checkbox.isChecked();
                      if (checkbox.check) {
                        CitiesMock.mapOfCities.addAll(
                          [
                            {
                              "name": snapshot.data!.cityName!,
                              "isChecked": false,
                            },
                          ],
                        );
                      } else {
                        CitiesMock.mapOfCities.removeAt(
                          CitiesMock.mapOfCities.length - 1,
                        );
                      }
                    },
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
