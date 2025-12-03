import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

ThemeData buildTheme() {
  var baseTheme = ThemeData.dark().copyWith(
    brightness: Brightness.light,
    colorScheme: ColorScheme.fromSwatch().copyWith(
      primary: Colors.teal,
      brightness: Brightness.dark,
    ),
    bottomNavigationBarTheme: const BottomNavigationBarThemeData(
      backgroundColor: Colors.white,
      selectedItemColor: Colors.teal,
    ),
    canvasColor: Colors.white,
    scaffoldBackgroundColor: Colors.white,
    appBarTheme: const AppBarTheme(backgroundColor: Colors.white),
  );

  final customTextTheme = GoogleFonts.robotoTextTheme(baseTheme.textTheme).copyWith(
    headlineLarge: GoogleFonts.roboto(
      fontSize: 37,
      fontWeight: FontWeight.w800,
      letterSpacing: 0.3,
    ),
    headlineMedium: GoogleFonts.roboto(
      fontSize: 30,
      fontWeight: FontWeight.w700,
      letterSpacing: 0.2,
    ),
    headlineSmall: GoogleFonts.roboto(
      fontSize: 20,
      fontWeight: FontWeight.w700,
      letterSpacing: 0.2,
    ),
    titleMedium: GoogleFonts.roboto(
      fontSize: 18.5,
      fontWeight: FontWeight.w400,
      letterSpacing: 0.2,
    ),
    titleSmall: GoogleFonts.roboto(
      fontSize: 18,
      fontWeight: FontWeight.w600,
      letterSpacing: 0.2,
    ),
    bodyLarge: GoogleFonts.roboto(
      fontSize: 15,
      fontWeight: FontWeight.w400,
      letterSpacing: 0.2,
    ),
    bodyMedium: GoogleFonts.roboto(
      fontSize: 12,
      fontWeight: FontWeight.w500,
      letterSpacing: 0.2,
      height: 1.3
    ),
    bodySmall: GoogleFonts.roboto(
      fontSize: 11,
      fontWeight: FontWeight.w400,
      letterSpacing: 0.2,
    ),
  );

  return baseTheme.copyWith(
    textTheme: customTextTheme,
  );
}