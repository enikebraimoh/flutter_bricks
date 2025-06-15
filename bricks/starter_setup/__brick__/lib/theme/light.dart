import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'colors.dart';

class AppTheme {
  static ThemeData get lightTheme {
    return ThemeData(
      primaryColor: AppColors.primary,
      scaffoldBackgroundColor: AppColors.background,
      colorScheme: ColorScheme.light(
        primary: AppColors.primary,
        secondary: AppColors.primaryLight,
        surface: AppColors.surfaceLight,
        error: AppColors.error,
      ),
      textTheme: _getTextTheme(),
      elevatedButtonTheme: _elevatedButtonTheme(),
      outlinedButtonTheme: _outlinedButtonTheme(),
      textButtonTheme: _textButtonTheme(),
      inputDecorationTheme: _inputDecorationTheme(),
      appBarTheme: _appBarTheme(),
    );
  }

  static TextTheme _getTextTheme() {
    return TextTheme(
      displayLarge: TextStyle(
        fontFamily: GoogleFonts.dmSans(fontWeight: FontWeight.w600).fontFamily,
        fontSize: 32,
        fontWeight: FontWeight.w600,
        color: AppColors.textPrimary,
      ),
      displayMedium: TextStyle(
        fontFamily: GoogleFonts.dmSans(fontWeight: FontWeight.w600).fontFamily,
        fontSize: 28,
        fontWeight: FontWeight.w600,
        color: AppColors.textPrimary,
      ),
      displaySmall: TextStyle(
        fontFamily: GoogleFonts.dmSans(fontWeight: FontWeight.w600).fontFamily,
        fontSize: 24,
        fontWeight: FontWeight.w600,
        color: AppColors.textPrimary,
      ),
      headlineMedium: TextStyle(
        fontFamily: GoogleFonts.dmSans(fontWeight: FontWeight.w600).fontFamily,
        fontSize: 20,
        fontWeight: FontWeight.w600,
        color: AppColors.textPrimary,
      ),
      headlineSmall: TextStyle(
        fontFamily: GoogleFonts.dmSans(fontWeight: FontWeight.w500).fontFamily,
        fontSize: 18,
        fontWeight: FontWeight.w500,
        color: AppColors.textPrimary,
      ),
      titleLarge: TextStyle(
        fontFamily: GoogleFonts.dmSans(fontWeight: FontWeight.w500).fontFamily,
        fontSize: 16,
        fontWeight: FontWeight.w500,
        color: AppColors.textPrimary,
      ),
      bodyLarge: TextStyle(
        fontFamily: GoogleFonts.dmSans(fontWeight: FontWeight.w400).fontFamily,
        fontSize: 16,
        fontWeight: FontWeight.w400,
        color: AppColors.textPrimary,
      ),
      bodyMedium: TextStyle(
        fontFamily: GoogleFonts.dmSans(fontWeight: FontWeight.w400).fontFamily,
        fontSize: 14,
        fontWeight: FontWeight.w400,
        color: AppColors.textPrimary,
      ),
      labelLarge: TextStyle(
        fontFamily: GoogleFonts.dmSans(fontWeight: FontWeight.w500).fontFamily,
        fontSize: 14,
        fontWeight: FontWeight.w500,
        color: AppColors.textPrimary,
      ),
      bodySmall: TextStyle(
        fontFamily: GoogleFonts.dmSans(fontWeight: FontWeight.w400).fontFamily,
        fontSize: 12,
        fontWeight: FontWeight.w400,
        color: AppColors.textSecondary,
      ),
      labelSmall: TextStyle(
        fontFamily: GoogleFonts.dmSans(fontWeight: FontWeight.w400).fontFamily,
        fontSize: 10,
        fontWeight: FontWeight.w400,
        color: AppColors.textSecondary,
      ),
    );
  }

  static ElevatedButtonThemeData _elevatedButtonTheme() {
    return ElevatedButtonThemeData(
      style: ElevatedButton.styleFrom(
        backgroundColor: AppColors.primary,
        foregroundColor: Colors.white,
        minimumSize: const Size.fromHeight(56),
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8)),
        textStyle: TextStyle(
          fontFamily:
              GoogleFonts.dmSans(fontWeight: FontWeight.w500).fontFamily,
          fontWeight: FontWeight.w500,
          fontSize: 16,
        ),
      ),
    );
  }

  static OutlinedButtonThemeData _outlinedButtonTheme() {
    return OutlinedButtonThemeData(
      style: OutlinedButton.styleFrom(
        foregroundColor: AppColors.primary,
        minimumSize: const Size.fromHeight(56),
        side: const BorderSide(color: AppColors.primary),
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8)),
        textStyle: TextStyle(
          fontFamily:
              GoogleFonts.dmSans(fontWeight: FontWeight.w500).fontFamily,
          fontWeight: FontWeight.w500,
          fontSize: 16,
        ),
      ),
    );
  }

  static TextButtonThemeData _textButtonTheme() {
    return TextButtonThemeData(
      style: TextButton.styleFrom(
        foregroundColor: AppColors.primary,
        textStyle: TextStyle(
          fontFamily:
              GoogleFonts.dmSans(fontWeight: FontWeight.w500).fontFamily,
          fontWeight: FontWeight.w500,
          fontSize: 16,
        ),
      ),
    );
  }

  static InputDecorationTheme _inputDecorationTheme() {
    return InputDecorationTheme(
      filled: false,
      hintStyle: TextStyle(
        fontFamily: GoogleFonts.dmSans(fontWeight: FontWeight.w400).fontFamily,
        fontSize: 13,
        fontWeight: FontWeight.w400,
        color: AppColors.textTertiary,
      ),
      labelStyle: TextStyle(
        fontFamily: GoogleFonts.dmSans(fontWeight: FontWeight.w400).fontFamily,
        fontSize: 16,
        fontWeight: FontWeight.w400,
        color: AppColors.textTertiary,
      ),
      floatingLabelStyle: TextStyle(
        fontFamily: GoogleFonts.dmSans(fontWeight: FontWeight.w400).fontFamily,
        fontSize: 16,
        fontWeight: FontWeight.w400,
        color: AppColors.textTertiary,
      ),
      errorStyle: TextStyle(
        fontFamily: GoogleFonts.dmSans(fontWeight: FontWeight.w400).fontFamily,
        fontSize: 11,
        fontWeight: FontWeight.w400,
        color: AppColors.error,
      ),
      border: OutlineInputBorder(
        borderRadius: BorderRadius.circular(8),
        borderSide: const BorderSide(color: AppColors.grey03, width: 1),
      ),
      enabledBorder: OutlineInputBorder(
        borderRadius: BorderRadius.circular(8),
        borderSide: const BorderSide(color: AppColors.grey03, width: 1),
      ),
      focusedBorder: OutlineInputBorder(
        borderRadius: BorderRadius.circular(8),
        borderSide: const BorderSide(color: AppColors.textPrimary, width: 1),
      ),
      errorBorder: OutlineInputBorder(
        borderRadius: BorderRadius.circular(8),
        borderSide: const BorderSide(color: AppColors.error, width: 1),
      ),
      contentPadding: const EdgeInsets.symmetric(horizontal: 16, vertical: 16),
    );
  }

  static AppBarTheme _appBarTheme() {
    return AppBarTheme(
      backgroundColor: AppColors.background,
      elevation: 0,
      centerTitle: true,
      iconTheme: IconThemeData(color: AppColors.textPrimary),
      titleTextStyle: TextStyle(
        fontFamily: GoogleFonts.dmSans(fontWeight: FontWeight.w600).fontFamily,
        fontSize: 18,
        fontWeight: FontWeight.w600,
        color: AppColors.textPrimary,
      ),
    );
  }
}
