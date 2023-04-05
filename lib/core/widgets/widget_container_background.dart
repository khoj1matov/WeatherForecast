import 'package:flutter/material.dart';
import 'package:weatherforecast/core/constants/color_const.dart';
import 'package:weatherforecast/core/extension/context_ext.dart';

class ContainerBackgroundWidget {
  static Container container(
      {required BuildContext context,
      required Widget child,
      EdgeInsets? padding}) {
    return Container(
      padding: padding,
      width: context.w,
      height: context.h,
      decoration: BoxDecoration(
        gradient: ColorConst.background(),
        image: const DecorationImage(
          image: AssetImage("assets/background.png"),
          fit: BoxFit.cover,
        ),
      ),
      child: child,
    );
  }
}
