import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

final ThemeData customTheme = ThemeData.dark().copyWith(
  scaffoldBackgroundColor: Colors.black,
  textTheme: TextTheme(
    titleLarge: GoogleFonts.oswald(fontSize: 24, color: Colors.white),
    bodyMedium: GoogleFonts.merriweather(fontSize: 16, color: Colors.white),
  ),
  elevatedButtonTheme: ElevatedButtonThemeData(
    style: ElevatedButton.styleFrom(
      backgroundColor: Colors.white,
      foregroundColor: Colors.black,
    ),
  ),
);
