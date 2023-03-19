import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

var primaryColor = const Color(0xffffce00);
var textColor = const Color(0xff092543);
var iconColor = const Color(0xff092543);

var successColor = const Color(0xff8cc63f);
ThemeData getDefaultTheme() {
  return ThemeData(
    primaryColor: primaryColor,
    appBarTheme: AppBarTheme(
      backgroundColor: primaryColor,
      titleTextStyle: GoogleFonts.roboto(
        color: textColor,
        fontWeight: FontWeight.bold,
        fontSize: 16.0,
      ),
      elevation: 0.0,
    ),
    iconTheme: IconThemeData(
      color: iconColor,
    ),
  );
}
