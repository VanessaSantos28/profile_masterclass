import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import 'dark_colors.dart';

ThemeData get darkTheme => ThemeData.dark().copyWith(
      colorScheme: const ColorScheme(
        brightness: Brightness.dark,
        primary: DarkColors.kPrimaryColor,
        onPrimary: DarkColors.kPrimaryColor,
        secondary: DarkColors.kHighlightColor,
        onSecondary: DarkColors.kHighlightColor,
        error: Colors.red,
        onError: Colors.red,
        background: DarkColors.kBackgroundColor,
        onBackground: DarkColors.kBackgroundColor,
        surface: DarkColors.kCardColor,
        onSurface: DarkColors.kCardColor,
        primaryContainer: DarkColors.kPrimaryColor,
        tertiary: DarkColors.kProgressIndicator,
      ),
      iconButtonTheme: const IconButtonThemeData(
          style: ButtonStyle(
              foregroundColor:
                  MaterialStatePropertyAll(DarkColors.kHighlightColor))),
      appBarTheme: const AppBarTheme(color: DarkColors.kBackgroundColor),
      elevatedButtonTheme: ElevatedButtonThemeData(
        style: ElevatedButton.styleFrom(
            backgroundColor: DarkColors.kPrimaryColor,
            textStyle: TextStyle(
                color: DarkColors.kHighlightColor,
                fontSize: 14,
                fontFamily: GoogleFonts.poppinsTextTheme().toString()),
            foregroundColor: DarkColors.kHighlightColor),
      ),
      textTheme: GoogleFonts.poppinsTextTheme(
        const TextTheme(
          displayLarge: TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.w500,
              color: DarkColors.kHighlightColor),
          displayMedium: TextStyle(
              fontSize: 16,
              fontWeight: FontWeight.w500,
              color: DarkColors.kHighlightColor),
          bodyLarge: TextStyle(
            fontSize: 14,
            fontWeight: FontWeight.w500,
            fontFamily: "Montserrat",
            color: DarkColors.kHighlightColor,
          ),
          bodySmall: TextStyle(
              fontSize: 12,
              fontWeight: FontWeight.w400,
              color: DarkColors.kHighlightColor),
          bodyMedium: TextStyle(
              fontSize: 12,
              fontWeight: FontWeight.w500,
              fontFamily: "Montserrat",
              color: DarkColors.kDescriptionColor),
        ),
      ),
      cardColor: DarkColors.kCardColor,
      useMaterial3: true,
    );
