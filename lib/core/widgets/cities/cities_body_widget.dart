import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:weatherforecast/core/extension/context_ext.dart';
import 'package:weatherforecast/core/widgets/cities/cities_listview_widget.dart';
import 'package:weatherforecast/core/widgets/cities/cities_noplace_widget.dart';
import 'package:weatherforecast/provider/cities_list_provider.dart';

class CitiesBodyWidget {
  static SizedBox body(BuildContext context) {
    final cities = context.watch<CitiesListProvider>().citiesList;
    return SizedBox(
      height: context.h * 0.885,
      child: cities.length == 0
          ? CitiesNoPlaceWidget.noPlace()
          : CitiesListViewWidget.listView(context),
    );
  }
}
