import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:weatherforecast/core/constants/color_const.dart';
import 'package:weatherforecast/core/extension/context_ext.dart';
import 'package:weatherforecast/provider/cities_list_provider.dart';

class CitiesListViewWidget {
  static ChangeNotifierProvider listView(BuildContext context) {
    List<String> cities = context.read<CitiesListProvider>().citiesList;
    return ChangeNotifierProvider(
      create: (context) => CitiesListProvider(),
      child: Consumer<CitiesListProvider>(
        builder: (context, cp, child) => ListView.builder(
          itemCount: cities.length,
          itemBuilder: (ctx, index) {
            return Padding(
              padding: const EdgeInsets.only(left: 25),
              child: ListTile(
                contentPadding: EdgeInsets.all(0),
                title: Text(
                  cities[index],
                  style: TextStyle(
                    color: ColorConst.kPrimaryWhite,
                    fontSize: 19,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                trailing: SizedBox(
                  width: context.w * 0.25,
                  child: Row(
                    children: [
                      Radio(
                        fillColor: MaterialStateProperty.all(
                          ColorConst.kPrimaryWhite,
                        ),
                        value: cities[index],
                        groupValue: cp.selectedCity,
                        onChanged: (value) {
                          cp.isSelectedCity(value!);
                        },
                      ),
                      IconButton(
                        onPressed: () {
                          cp.deleteCity(context, index);
                        },
                        color: ColorConst.kPrimaryWhite,
                        icon: Icon(Icons.delete_outline),
                      ),
                    ],
                  ),
                ),
              ),
            );
          },
        ),
      ),
    );
  }
}
