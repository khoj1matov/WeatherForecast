import 'package:flutter/material.dart';
import 'package:weatherforecast/core/constants/color_const.dart';
import 'package:weatherforecast/core/widgets/search/search_borders_widget.dart';
import 'package:weatherforecast/provider/email_send_provider.dart';

class SupportFieldBodyWidget {
  static Padding fieldBody(BuildContext context, EmailSendProvider esp) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 10, vertical: 10),
      child: TextField(
        controller: esp.bodyController,
        maxLines: 10,
        style: TextStyle(
          color: ColorConst.kPrimaryWhite,
          fontSize: 20,
          fontWeight: FontWeight.bold,
        ),
        cursorColor: ColorConst.kPrimaryWhite,
        cursorWidth: 2.5,
        decoration: InputDecoration(
          hintText: "Description",
          hintStyle: TextStyle(
            color: ColorConst.kPrimaryWhite,
            fontSize: 20,
            fontWeight: FontWeight.bold,
          ),
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
      ),
    );
  }
}
