import 'package:flutter/material.dart';
import 'package:weatherforecast/core/constants/color_const.dart';
import 'package:weatherforecast/core/extension/context_ext.dart';
import 'package:weatherforecast/provider/search_provider.dart';

class SearchResultCitiesWidget {
  static Padding searchResultNull(BuildContext context, SearchProvider sp) {
    return Padding(
      padding: const EdgeInsets.only(top: 125, left: 10, right: 10),
      child: SizedBox(
        height: context.h * 0.855,
        child: ListView.builder(
          itemCount: sp.items.length,
          itemBuilder: (context, index) {
            return Container(
              padding: EdgeInsets.only(left: 4),
              margin: EdgeInsets.symmetric(vertical: 5),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                gradient: ColorConst.cities(),
              ),
              child: ListTile(
                title: Text(
                  sp.items[index],
                  maxLines: 1,
                  overflow: TextOverflow.ellipsis,
                  style: TextStyle(
                    color: ColorConst.kPrimaryWhite,
                    fontSize: 19,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                onTap: () {
                  sp.inputText(sp.items[index]);
                },
              ),
            );
          },
        ),
      ),
    );
  }
}
