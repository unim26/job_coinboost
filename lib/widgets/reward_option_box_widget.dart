import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

Widget rewardOptionBoxWidget({
  required double width,
  required double height,
  required double fontSize,
}) {
  return Container(
    width: width,
    height: height,
    decoration: BoxDecoration(
      gradient: LinearGradient(
        begin: Alignment.topCenter,
        end: Alignment.bottomCenter,
        colors: [
          Color.fromRGBO(247, 147, 26, 1),
          Color.fromRGBO(255, 171, 69, 1),
        ],
      ),
      borderRadius: BorderRadius.circular(10),
    ),
    child: Center(
      child: Text(
        "\$2\nAD",
        style: TextStyle(
          fontSize: fontSize,
          fontWeight: FontWeight.bold,
          color: Color.fromRGBO(255, 255, 255, 1),
          fontFamily: GoogleFonts.robotoMono().fontFamily,
        ),
      ),
    ),
  );
}
