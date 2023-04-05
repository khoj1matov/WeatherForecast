import 'package:flutter/material.dart';
import 'package:weatherforecast/core/extension/context_ext.dart';
import 'package:weatherforecast/core/widgets/search/search_text_field_widget.dart';
import 'package:weatherforecast/core/widgets/widget_to_back_widget.dart';
import 'package:weatherforecast/provider/search_provider.dart';

class SearchBackAndField {
  static Container backAndField(BuildContext context, SearchProvider tf) {
    return Container(
      margin: const EdgeInsets.only(top: 50, right: 15, left: 5),
      width: context.w,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          ToBackWidget.back(context),
          SizedBox(
            width: context.w * 0.79,
            child: SearchTextFieldWidget.textField(tf),
          ),
        ],
      ),
    );
  }
}
