import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import 'colors.dart';

ThemeData get darkTheme => ThemeData.dark().copyWith(
      iconButtonTheme: const IconButtonThemeData(
          style: ButtonStyle(
              foregroundColor:
                  MaterialStatePropertyAll(DarkColors.kHighlightColor))),
      appBarTheme: const AppBarTheme(color: DarkColors.kBackgroundColor),
      elevatedButtonTheme: ElevatedButtonThemeData(
        style: ElevatedButton.styleFrom(
            backgroundColor: DarkColors.kPrimaryColor,
            foregroundColor: DarkColors.kHighlightColor),
      ),
      textTheme: GoogleFonts.poppinsTextTheme(),
      cardColor: DarkColors.kCardColor,
      useMaterial3: true,
    );
