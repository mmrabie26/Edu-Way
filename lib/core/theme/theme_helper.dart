import 'package:eduway/core/theme/light_theme.dart';
import 'package:flutter/material.dart';

class ThemeHelper {
  static ThemeData get lightMode => lightTheme();

  // static ThemeData get darkMode => darkTheme();

  // static final ValueNotifier<ThemeMode> themeNotifier = ValueNotifier(
  //   LocalStorageService().readSettingBox<String>(AppString.kTheme) == AppString.darkMode
  //       ? ThemeMode.dark
  //       : ThemeMode.light ?? ThemeMode.system,
  // );
}
