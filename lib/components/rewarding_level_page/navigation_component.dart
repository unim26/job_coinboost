import 'package:coinboost/constants/constants.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

Widget navigationComponent({
  required String title,
  required double sHeight,
  required double sWidth,
  void Function()? onTap
}) {
  return Row(
    mainAxisAlignment: MainAxisAlignment.center,
    children: [
      //back button
      GestureDetector(
        onTap: onTap,
        child: Image.asset(
          "assets/images/navigateBack.png",
          height: sHeight * .06,
          width: sWidth * .1,
        ),
      ),

      //space
      SizedBox(
        width: sWidth * .05,
      ),

      //title
      Text(
        title,
        style: TextStyle(
          fontSize: 20,
          fontWeight: FontWeight.bold,
          color: primaryColor,
          fontFamily: GoogleFonts.robotoMono().fontFamily,
        ),
      )
    ],
  );
}
