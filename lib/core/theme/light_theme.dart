import 'package:eduway/core/constants/spacing.dart';
import 'package:eduway/core/theme/theme_colors.dart';
import 'package:flutter/material.dart';

ThemeData lightTheme() => ThemeData(
      fontFamily: 'Cairo',
      useMaterial3: true,
      scaffoldBackgroundColor: ThemeColors.backgroundLight,
      colorScheme: const ColorScheme.light(
        brightness: Brightness.light,
        primary: ThemeColors.primary,
        secondary: ThemeColors.secondary,
        surface: ThemeColors.cardLight,
        error: ThemeColors.error,
        onPrimary: ThemeColors.white,
        onSecondary: ThemeColors.black,
        onSurface: ThemeColors.primaryTextLight,
        onError: ThemeColors.white,
      ),

      appBarTheme: const AppBarTheme(
        elevation: 0,
        backgroundColor: ThemeColors.backgroundLight,
        iconTheme: IconThemeData(
          color: ThemeColors.primary,
        ),
        titleTextStyle: TextStyle(
          fontSize: 24,
          fontWeight: FontWeight.bold,
          color: Colors.black,
        ),
      ),
      
      inputDecorationTheme: InputDecorationTheme(
        contentPadding: const EdgeInsets.symmetric(
            horizontal: Spacing.s16, vertical: Spacing.s12),
        border: OutlineInputBorder(),
        enabledBorder: OutlineInputBorder(
          borderSide: const BorderSide(color: Colors.grey),
        ),
        focusedBorder: OutlineInputBorder(
          borderSide: const BorderSide(color: ThemeColors.secondary, width: 1),
        ),
        errorBorder: OutlineInputBorder(
          borderSide: const BorderSide(color: ThemeColors.error, width: 1),
        ),
        focusedErrorBorder: OutlineInputBorder(
          borderSide: const BorderSide(color: ThemeColors.error, width: 1.5),
        ),
        hintStyle: const TextStyle(color: ThemeColors.secondaryTextLight,),
      ),
      filledButtonTheme: FilledButtonThemeData(
        style: FilledButton.styleFrom(
          minimumSize: const Size(double.infinity, 40),
          padding: const EdgeInsets.symmetric(vertical: 15,horizontal: 10),
          shape: RoundedRectangleBorder(
           borderRadius: BorderRadius.circular(15),
          ),
        ),
      ),
      
      // cardTheme: const CardThemeData(
      //   color: ThemeColors.cardLight,
      //   elevation: 1,
      //   margin: EdgeInsets.zero,
      //   shape: RoundedRectangleBorder(
      //     borderRadius: BorderRadius.all(Radius.circular(kBorderRadius)),
      //   ),
      // ),
      // appBarTheme: const AppBarTheme(
      //   elevation: 0,
      //   backgroundColor: ThemeColors.white,
      // ),
      // textTheme: const TextTheme(
      //   bodyLarge: TextStyle(color: ThemeColors.primaryTextLight),
      //   bodyMedium: TextStyle(color: ThemeColors.secondaryTextLight),
      //   titleLarge: TextStyle(
      //       color: ThemeColors.primaryTextLight, fontWeight: FontWeight.bold),
      // ),
      // elevatedButtonTheme: ElevatedButtonThemeData(
      //   style: ElevatedButton.styleFrom(
      //     backgroundColor: ThemeColors.primary,
      //     foregroundColor: ThemeColors.white,
      //     shape: RoundedRectangleBorder(
      //       borderRadius: BorderRadius.circular(kBorderRadius),
      //     ),
      //     padding: const EdgeInsets.symmetric(
      //       vertical: Spacing.s12,
      //       horizontal: Spacing.s24,
      //     ),
      //   ),
      // ),
    );