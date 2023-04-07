import 'package:flutter/material.dart';
import 'package:weatherforecast/core/constants/color_const.dart';
import 'package:weatherforecast/core/extension/context_ext.dart';
import 'package:weatherforecast/provider/email_send_provider.dart';

class SupportSendWidget {
  static InkWell send(BuildContext context, EmailSendProvider esp) {
    return InkWell(
      child: Container(
        height: context.h * 0.07,
        width: context.w * 0.9,
        decoration: BoxDecoration(
          gradient: ColorConst.cities(),
          borderRadius: BorderRadius.circular(8),
          border: Border.all(
            width: 2,
            color: ColorConst.kPrimaryWhite,
          ),
        ),
        child: Center(
          child: Text(
            "Send",
            style: TextStyle(
              fontSize: 19,
              fontWeight: FontWeight.w600,
              color: ColorConst.kPrimaryWhite,
            ),
          ),
        ),
      ),
      onTap: () {
        esp.send(context);
      },
    );
  }
}
