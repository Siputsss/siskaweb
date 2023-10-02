import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class AppTextStyle {
  static TextStyle headerTextStyle({required Color color}) {
    return GoogleFonts.rubik(
      fontSize: 18,
      fontWeight: FontWeight.normal,
      color: Colors.black,
    );
  }

  static TextStyle montserratStyle({double fontsize = 22, Color color = Colors.white}) {
    return GoogleFonts.montserrat(
      color: color,
      fontWeight: FontWeight.w800,
      fontSize: fontsize,
    );
  }

  static TextStyle headingTextStyle() {
    return GoogleFonts.rubikMoonrocks(
      color: Colors.white,
      fontWeight: FontWeight.w300,
      fontSize: 30,
      letterSpacing: 2,
    );
  }

  static TextStyle normalStyle() {
    return GoogleFonts.rubik(
      fontWeight: FontWeight.w400,
      fontSize: 14,
      color: Colors.white,
      letterSpacing: 1,
      height: 1.5,
    );
  }

  static TextStyle buttonStyle() {
    return GoogleFonts.rubik(
      fontWeight: FontWeight.w600,
      fontSize: 14,
      color: Colors.white,
    );
  }

  static TextStyle aboutstyle() {
    return GoogleFonts.rubik(
      fontWeight: FontWeight.w400,
      fontSize: 14,
      color: Colors.black,
      letterSpacing: 1,
    );
  }

  static TextStyle normal2Style() {
    return GoogleFonts.rubik(
      fontWeight: FontWeight.w400,
      fontSize: 14,
      color: Colors.black,
      height: 1.5,
      // letterSpacing: 1,
    );
  }
}
