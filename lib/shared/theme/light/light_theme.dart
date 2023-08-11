import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'colors.dart';

ThemeData get lightTheme => ThemeData.light().copyWith(
      iconButtonTheme: const IconButtonThemeData(
          style: ButtonStyle(
              foregroundColor:
                  MaterialStatePropertyAll(LightColors.kHighlightColor))),
      appBarTheme: const AppBarTheme(color: LightColors.kBackgroundColor),
      elevatedButtonTheme: ElevatedButtonThemeData(
        style: ElevatedButton.styleFrom(
            backgroundColor: LightColors.kPrimaryColor,
            foregroundColor: LightColors.kHighlightColor),
      ),
      textTheme: GoogleFonts.poppinsTextTheme(),
      cardColor: LightColors.kCardColor,
      useMaterial3: true,
    );
