import 'package:coinboost/constants/constants.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

Widget appButtonWidget({required double sHeight}) {
  return Padding(
    padding: const EdgeInsets.symmetric(horizontal: 20),
    child: ClipRRect(
      borderRadius: BorderRadius.circular(10),
      child: MaterialButton(
        height: sHeight * .09,
        onPressed: () {},
        color: primaryColor,
        child: Center(
          child: Text(
            "Continue",
            style: TextStyle(
              fontSize: 24,
              fontWeight: FontWeight.bold,
              color: Colors.white,
              fontFamily: GoogleFonts.robotoMono().fontFamily,
            ),
          ),
        ),
      ),
    ),
  );
}
