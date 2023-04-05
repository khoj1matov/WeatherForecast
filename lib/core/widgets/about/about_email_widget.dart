import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:weatherforecast/core/constants/color_const.dart';
import 'package:weatherforecast/core/extension/context_ext.dart';
import 'package:weatherforecast/services/url_launcher_service.dart';

class AboutEmailWidget {
  static InkWell email(BuildContext context) {
    return InkWell(
      onTap: UrlLauncherService.launchEmail,
      child: Container(
        padding: const EdgeInsets.symmetric(horizontal: 15),
        width: context.w * 0.8,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          gradient: ColorConst.humidty(),
        ),
        child: ListTile(
          leading: Text(
            "Write To Email",
            style: TextStyle(
              color: ColorConst.kPrimaryWhite,
              fontSize: 20,
              fontWeight: FontWeight.w600,
            ),
          ),
          trailing: SvgPicture.asset(
            "assets/gmail.svg",
            width: 50,
            height: 50,
          ),
        ),
      ),
    );
  }
}
