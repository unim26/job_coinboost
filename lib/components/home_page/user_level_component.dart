import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

Widget userLevelComponent({required double sHeight, required double sWidth}) {
  return Row(
    children: [
      Image.asset(
        "assets/images/medal.png",
        height: sHeight * .07,
        width: sWidth * .08,
      ),
      Text(
        "Level 01",
        style: TextStyle(
          fontSize: 12,
          fontWeight: FontWeight.bold,
          fontFamily: GoogleFonts.robotoMono().fontFamily,
        ),
      )
    ],
  );
}
