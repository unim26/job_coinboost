import 'package:coinboost/constants/constants.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

Widget appButtonWidget(
    {required double sHeight,
    required String bTitle,
    required double fontSize,
    void Function()? onPressed}) {
  return ClipRRect(
    borderRadius: BorderRadius.circular(10),
    child: MaterialButton(
      height: sHeight * .065,
      onPressed: onPressed,
      color: primaryColor,
      child: Center(
        child: Text(
          bTitle,
          style: TextStyle(
            fontSize: fontSize,
            fontWeight: FontWeight.bold,
            color: Colors.white,
            fontFamily: GoogleFonts.robotoMono().fontFamily,
          ),
        ),
      ),
    ),
  );
}
