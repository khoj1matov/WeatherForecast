import 'package:flutter/material.dart';
import 'package:weatherforecast/core/constants/color_const.dart';
import 'package:weatherforecast/core/widgets/search/search_borders_widget.dart';
import 'package:weatherforecast/provider/search_provider.dart';

class SearchTextFieldWidget {
  static TextField textField(SearchProvider textField) {
    late TextEditingController controller = TextEditingController();
    return TextField(
      controller: controller,
      style: TextStyle(color: ColorConst.kPrimaryWhite),
      cursorColor: ColorConst.kPrimaryWhite,
      cursorWidth: 2.5,
      decoration: InputDecoration(
        suffixIcon: IconButton(
          icon: const Icon(Icons.search),
          iconSize: 30,
          onPressed: () {
            textField.inputText(controller.text);
          },
        ),
        suffixIconColor: ColorConst.kPrimaryWhite,
        hintText: textField.cityName ?? "Enter the name of the city or state",
        hintMaxLines: 1,
        hintStyle: TextStyle(color: ColorConst.kPrimaryWhite),
        border: SearchBordersWidget.borders(
          color: ColorConst.kPrimaryWhite,
        ),
        enabledBorder: SearchBordersWidget.borders(
          color: ColorConst.kPrimaryWhite,
        ),
        focusedBorder: SearchBordersWidget.borders(
          color: ColorConst.kPrimaryWhite,
        ),
        focusedErrorBorder: SearchBordersWidget.borders(
          color: ColorConst.kPrimaryRed,
        ),
        disabledBorder: SearchBordersWidget.borders(
          color: ColorConst.kPrimaryRed,
        ),
      ),
      onEditingComplete: () {
        textField.inputText(controller.text);
      },
    );
  }
}
