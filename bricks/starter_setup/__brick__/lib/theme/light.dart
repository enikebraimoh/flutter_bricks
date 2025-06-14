import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import '../shared/utils/colors.dart';

ThemeData lightTheme = ThemeData.light().copyWith(
  colorScheme: ColorScheme.fromSeed(seedColor: AppColors.selarPurple),
  primaryTextTheme: GoogleFonts.dmSansTextTheme(),
  iconTheme: IconThemeData(
    size: 24,
    color: AppColors.selarGrey2,
  ),
  scaffoldBackgroundColor: AppColors.selarWhite,
  primaryColor: AppColors.selarPurple,
  brightness: Brightness.light,
  bottomSheetTheme: BottomSheetThemeData(
    backgroundColor: AppColors.selarWhite,
    constraints: const BoxConstraints(
      maxWidth: double.infinity,
    ),
    modalBackgroundColor: AppColors.selarWhite,
    shape: const RoundedRectangleBorder(
      borderRadius: BorderRadius.vertical(top: Radius.circular(16)),
    ),
  ),
  focusColor: AppColors.selarPurple,
  visualDensity: VisualDensity.adaptivePlatformDensity,
  hintColor: AppColors.selarGrayscale[1],
  buttonTheme: ButtonThemeData(buttonColor: AppColors.selarPurple),
  textSelectionTheme:
      TextSelectionThemeData(cursorColor: AppColors.selarPurple),
  filledButtonTheme: FilledButtonThemeData(
    style: mainButtonStyle.copyWith(
      backgroundColor: WidgetStatePropertyAll(AppColors.selarPurple),
    ),
  ),
  textTheme: TextTheme(
    titleLarge: TextStyle(
        fontFamily: GoogleFonts.dmSans().fontFamily,
        color: AppColors.selarBlack,
        fontWeight: FontWeight.w700,
        fontSize: 22),
    titleMedium: TextStyle(
        fontFamily: GoogleFonts.dmSans().fontFamily,
        color: AppColors.selarBlack,
        fontWeight: FontWeight.w600,
        fontStyle: FontStyle.normal,
        fontSize: 20),
    titleSmall: TextStyle(
        fontFamily: GoogleFonts.dmSans().fontFamily,
        color: AppColors.selarBlack,
        fontWeight: FontWeight.w400,
        fontStyle: FontStyle.normal,
        fontSize: 18),
    bodySmall: TextStyle(
        fontFamily: GoogleFonts.dmSans().fontFamily,
        fontStyle: FontStyle.normal,
        fontWeight: FontWeight.w400,
        fontSize: 14),
    bodyMedium: TextStyle(
      fontFamily: GoogleFonts.dmSans().fontFamily,
      color: AppColors.selarBlack,
      fontWeight: FontWeight.w400,
      fontStyle: FontStyle.normal,
      fontSize: 16,
    ),
    bodyLarge: TextStyle(
      fontFamily: GoogleFonts.dmSans().fontFamily,
      color: AppColors.selarBlack,
      fontWeight: FontWeight.w500,
      fontStyle: FontStyle.normal,
      fontSize: 16,
    ),
    displaySmall: TextStyle(
      color: AppColors.selarGrayscale[75],
      fontFamily: GoogleFonts.dmSans().fontFamily,
    ),
    displayLarge: TextStyle(
      color: AppColors.headlineBlack,
      fontFamily: GoogleFonts.dmSans().fontFamily,
    ),
    displayMedium: TextStyle(
      color: AppColors.selarGrayscale[50],
      fontFamily: GoogleFonts.dmSans().fontFamily,
      height: 1.26,
      fontSize: 16,
    ),
    labelMedium: TextStyle(
      // height: 1.26,
      fontSize: 17,
      fontWeight: FontWeight.w400,
      color: AppColors.selarBlack,
    ),
    labelLarge: TextStyle(
      height: 1.26,
      fontSize: 12,
      fontWeight: FontWeight.w400,
      color: AppColors.selarGrayscale[40],
      fontFamily: GoogleFonts.dmSans().fontFamily,
    ),
    labelSmall: TextStyle(
      height: 1.26,
      fontSize: 12,
      fontWeight: FontWeight.w400,
      color: AppColors.selarGrayscaleWhite,
      fontFamily: GoogleFonts.dmSans().fontFamily,
    ),
    headlineSmall: TextStyle(
      height: 1.26,
      fontSize: 12,
      fontWeight: FontWeight.w500,
      color: AppColors.selarGrayscale[20],
      fontFamily: GoogleFonts.dmSans().fontFamily,
    ),
    headlineMedium: TextStyle(
      height: 1.26,
      fontSize: 12,
      fontWeight: FontWeight.w400,
      color: AppColors.disabledTextColor,
      fontFamily: GoogleFonts.dmSans().fontFamily,
    ),
    headlineLarge: TextStyle(
      height: 1.26,
      fontSize: 12,
      fontWeight: FontWeight.w400,
      color: AppColors.selarGrayscale[100],
      fontFamily: GoogleFonts.dmSans().fontFamily,
    ),
  ),
  appBarTheme: AppBarTheme(
      centerTitle: true,
      backgroundColor: AppColors.selarWhite,
      elevation: 0,
      iconTheme: IconThemeData(color: AppColors.selarGrayscale[40]),
      titleTextStyle: TextStyle(
          color: AppColors.selarBlack,
          fontSize: 22,
          fontFamily: GoogleFonts.dmSans().fontFamily,
          fontWeight: FontWeight.w700)),
  switchTheme: SwitchThemeData(
      thumbColor: WidgetStatePropertyAll(AppColors.selarWhite),
      trackColor: WidgetStatePropertyAll(AppColors.selarGrey2),
      trackOutlineColor: WidgetStatePropertyAll(
        Colors.transparent,
      )),
  elevatedButtonTheme: ElevatedButtonThemeData(
    style: ElevatedButton.styleFrom(
      elevation: 0.0,
      backgroundColor: AppColors.selarPurple,
      foregroundColor: AppColors.selarWhite,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(6),
      ),
      textStyle: TextStyle(
        fontSize: 16,
        fontWeight: FontWeight.bold,
        fontFamily: GoogleFonts.dmSans().fontFamily,
      ),
      // disabledForegroundColor: AppColors.selarWhite.withOpacity(0.38),
      // disabledBackgroundColor: AppColors.primary.withOpacity(0.12),
      // minimumSize: const Size(double.infinity, 50),
    ),
  ),
  // outlinedButtonTheme: OutlinedButtonThemeData(
  //   style: mainButtonStyle.copyWith(
  //     side: WidgetStatePropertyAll(
  //         BorderSide(color: AppColors.selarGrayscale[1]!)),
  //   ),
  // ),
  outlinedButtonTheme: OutlinedButtonThemeData(
    style: OutlinedButton.styleFrom(
        elevation: 0.0,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(6),
        ),
        textStyle: TextStyle(
          fontSize: 16,
          fontWeight: FontWeight.bold,
          fontFamily: GoogleFonts.dmSans().fontFamily,
        ),
        side: BorderSide(color: AppColors.selarGrayscale[1]!)),
    // minimumSize: const Size(double.infinity, 50),
  ),
  inputDecorationTheme: InputDecorationTheme(
    filled: true,
    floatingLabelBehavior: FloatingLabelBehavior.always,
    fillColor: AppColors.selarLightBG,
    labelStyle: TextStyle(
      color: AppColors.selarBlack,
      fontSize: 11,
      fontFamily: GoogleFonts.dmSans().fontFamily,
    ),
    contentPadding: const EdgeInsets.symmetric(
      horizontal: 12,
      vertical: 10,
    ),
    hintStyle: TextStyle(
      color: AppColors.grey,
      fontSize: 16,
      fontWeight: FontWeight.w400,
    ),
    floatingLabelStyle: TextStyle(
      color: AppColors.selarBlack,
      fontSize: 11,
      fontFamily: GoogleFonts.dmSans().fontFamily,
    ),
    errorStyle: TextStyle(
      fontSize: 11,
      color: AppColors.selarRed,
    ),
    enabledBorder: OutlineInputBorder(
      borderRadius: BorderRadius.circular(6),
      borderSide: BorderSide(color: AppColors.selarGrayscale[1]!),
    ),
    border: OutlineInputBorder(
      borderRadius: BorderRadius.circular(6),
      borderSide: BorderSide(color: AppColors.selarGrayscale[1]!),
    ),
    focusedBorder: OutlineInputBorder(
      borderRadius: BorderRadius.circular(6),
      borderSide: BorderSide(color: AppColors.selarPurple),
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
