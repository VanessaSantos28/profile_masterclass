import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'light_colors.dart';

ThemeData get lightTheme => ThemeData.light().copyWith(
      colorScheme: const ColorScheme(
        brightness: Brightness.light,
        primary: LightColors.kBackgroundColor,
        onPrimary: LightColors.kPrimaryColor,
        secondary: LightColors.kHighlightColor,
        onSecondary: LightColors.kHighlightColor,
        error: Colors.red,
        onError: Colors.red,
        background: LightColors.kBackgroundColor,
        onBackground: LightColors.kBackgroundColor,
        surface: LightColors.kCardColor,
        onSurface: LightColors.kCardColor,
        primaryContainer: LightColors.kPrimaryColor,
        tertiary: LightColors.kProgressIndicator,
      ),
      iconButtonTheme: const IconButtonThemeData(
          style: ButtonStyle(
              foregroundColor:
                  MaterialStatePropertyAll(LightColors.kHighlightColor))),
      appBarTheme: const AppBarTheme(color: LightColors.kBackgroundColor),
      elevatedButtonTheme: ElevatedButtonThemeData(
        style: ElevatedButton.styleFrom(
            textStyle: TextStyle(
                fontSize: 14,
                fontFamily: GoogleFonts.poppinsTextTheme().toString()),
            backgroundColor: LightColors.kPrimaryColor,
            foregroundColor: LightColors.kBackgroundColor),
      ),
      textTheme: GoogleFonts.poppinsTextTheme(
        const TextTheme(
          displayLarge: TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.w500,
              color: LightColors.kHighlightColor),
          displayMedium: TextStyle(
              fontSize: 16,
              fontWeight: FontWeight.w500,
              color: LightColors.kHighlightColor),
          bodyLarge: TextStyle(
            fontSize: 14,
            fontWeight: FontWeight.w500,
            fontFamily: "Montserrat",
            color: LightColors.kHighlightColor,
          ),
          bodySmall: TextStyle(
              fontSize: 12,
              fontWeight: FontWeight.w400,
              color: LightColors.kHighlightColor),
          bodyMedium: TextStyle(
              fontSize: 12,
              fontWeight: FontWeight.normal,
              fontFamily: "Montserrat",
              color: LightColors.kDescriptionColor),
        ),
      ),
      cardColor: LightColors.kCardColor,
      useMaterial3: true,
    );
