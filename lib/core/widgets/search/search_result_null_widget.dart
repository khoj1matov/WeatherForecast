import 'package:flutter/material.dart';
import 'package:weatherforecast/core/constants/color_const.dart';
import 'package:weatherforecast/core/extension/context_ext.dart';

class SearchResultNullWidget {
  static SizedBox searchResultNull(BuildContext context) {
    return SizedBox(
      width: context.w,
      height: context.h,
      child: Center(
        child: Text(
          "Search result!",
          style: TextStyle(
            fontSize: 40,
            fontWeight: FontWeight.bold,
            color: ColorConst.kPrimaryWhite,
          ),
        ),
      ),
    );
  }
}
