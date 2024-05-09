import 'package:blog_app/core/theme/app_color_pallete.dart';
import 'package:flutter/material.dart';

class AppTheme {
  static final dartThemeMode = ThemeData.dark().copyWith(
    scaffoldBackgroundColor: AppColorPallete.backgroundColor,
  );
}