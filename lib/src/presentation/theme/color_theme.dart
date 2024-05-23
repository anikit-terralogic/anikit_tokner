import 'package:flutter/material.dart';

import '../../../gen/colors.gen.dart';

class ThemeColorName {
  // static Color getColor(
  //     {required Color lightColor,
  //     required Color darkColor,
  //     required Color contrastColor}) {
  //   switch (themeManager.currentTheme) {
  //     case AppearanceMode.light:
  //       return lightColor;
  //     case AppearanceMode.dark:
  //       return darkColor;
  //     case AppearanceMode.system:
  //       return SchedulerBinding
  //                   .instance.platformDispatcher.platformBrightness ==
  //               Brightness.dark
  //           ? darkColor
  //           : lightColor;
  //     case AppearanceMode.contrast:
  //       return contrastColor;
  //     default:
  //       return lightColor;
  //   }
  // }

  static Color get backgroundColor => ColorName.backgroundColor;
  static Color get blueColor => ColorName.blueColor;

  static Color get createrColor => ColorName.createrColor;

  static Color get greyColor => ColorName.greyColor;

  static Color get learnMore => ColorName.learnMore;

  static Color get learnMoreGreen => ColorName.learnMoreGreen;

  static Color get presaleColor => ColorName.presaleColor;

  static Color get redColor => ColorName.redColor;

  static Color get subTextColor => ColorName.subTextColor;

  static Color get textColor => ColorName.textColor;

  static Color get whiteColor => ColorName.whiteColor;

  static Color get yellowColor => ColorName.yellowColor;

  static Color get firstgradientColor => ColorName.firstgradientColor;

  static Color get secondgradientColor => ColorName.secondgradientColor;

  static Color get greyTextColor => ColorName.greyTextColor;
}
