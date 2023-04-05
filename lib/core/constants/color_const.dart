import 'package:flutter/material.dart';

class ColorConst {
  static Color kPrimaryWhite = const Color(0xffFFFFFF).withOpacity(0.75);
  static Color kPrimaryBlack = const Color(0xff000000);
  static Color testFieldColor = const Color(0xff352163);
  static Color kPrimaryTrasparent = Colors.transparent;

  static Color kPrimaryRed = Colors.red;

  static Color refBackground = const Color(0xff030303).withOpacity(0.23);

  static LinearGradient background() {
    return const LinearGradient(
      begin: Alignment.topCenter,
      end: Alignment.bottomCenter,
      colors: <Color>[
        Color(0xff352163),
        Color(0xff331972),
        Color(0xff33143C),
      ],
    );
  }

  static LinearGradient drawerBackground() {
    return LinearGradient(
      begin: Alignment.topCenter,
      end: Alignment.bottomCenter,
      colors: <Color>[
        const Color(0xff352163).withOpacity(0.4),
        const Color(0xff331972).withOpacity(0.4),
        const Color(0xff33143C).withOpacity(0.6),
      ],
    );
  }

  static LinearGradient humidty() {
    return LinearGradient(
      begin: Alignment.topCenter,
      end: Alignment.bottomCenter,
      colors: <Color>[
        const Color(0x0f857dcd),
        const Color(0xffFFFFFF).withOpacity(0.4),
      ],
    );
  }
}
