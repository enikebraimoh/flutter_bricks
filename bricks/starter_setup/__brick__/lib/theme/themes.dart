import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import '../config/app.dart';
import '../shared/utils/colors.dart';

final mainButtonStyle = ButtonStyle(
  textStyle: WidgetStatePropertyAll(
    GoogleFonts.dmSans(fontWeight: FontWeight.w600),
  ),
  padding: const WidgetStatePropertyAll(
    EdgeInsets.symmetric(vertical: 16, horizontal: 24),
  ),
  shape: WidgetStatePropertyAll(
    RoundedRectangleBorder(borderRadius: BorderRadius.circular(6)),
  ),
);

final themeData = ThemeData(
  textTheme: GoogleFonts.dmSansTextTheme(),
  primaryTextTheme: GoogleFonts.dmSansTextTheme(),
  fontFamily: GoogleFonts.dmSans().fontFamily,
  colorScheme: ColorScheme.fromSeed(seedColor: appMainColor),
  scaffoldBackgroundColor: AppColors.selarLightBG,
  filledButtonTheme: FilledButtonThemeData(
    style: mainButtonStyle.copyWith(
      backgroundColor: const WidgetStatePropertyAll(appMainColor),
    ),
  ),
  outlinedButtonTheme: OutlinedButtonThemeData(
    style: mainButtonStyle.copyWith(
      side: const WidgetStatePropertyAll(BorderSide(color: appMainLightGray)),
    ),
  ),
  elevatedButtonTheme: ElevatedButtonThemeData(style: mainButtonStyle),
  textButtonTheme: TextButtonThemeData(
    style: ButtonStyle(
      textStyle: WidgetStatePropertyAll(
        GoogleFonts.dmSans(fontWeight: FontWeight.w600, color: appMainColor),
      ),
    ),
  ),
  inputDecorationTheme: InputDecorationTheme(
    filled: true,
    fillColor: const Color(0xFFFAFAFA),
    enabledBorder: OutlineInputBorder(
      borderRadius: BorderRadius.circular(6),
      borderSide: const BorderSide(color: Color(0xFFD7DBEA)),
    ),
    border: OutlineInputBorder(
      borderRadius: BorderRadius.circular(6),
      borderSide: const BorderSide(color: Color(0xFFD7DBEA)),
    ),
    focusedBorder: OutlineInputBorder(
      borderRadius: BorderRadius.circular(6),
      borderSide: const BorderSide(color: Color(0xFFD7DBEA)),
    ),
    errorBorder: OutlineInputBorder(
      borderRadius: BorderRadius.circular(6),
      borderSide: const BorderSide(color: Color(0xFFD7DBEA)),
    ),
    focusedErrorBorder: OutlineInputBorder(
      borderRadius: BorderRadius.circular(6),
      borderSide: const BorderSide(color: Color(0xFFD7DBEA)),
    ),
  ),
);
