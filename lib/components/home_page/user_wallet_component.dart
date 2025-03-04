import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

Widget userWalletComponent({required double sHeight, required double sWidth}) {
  return Row(
    children: [
      Image.asset(
        "assets/images/wallet.png",
        height: sHeight * .04,
        width: sWidth * .06,
      ),

      //space
      SizedBox(
        width: 7,
      ),
      Text(
        "\$25.00",
        style: TextStyle(
          fontSize: 13,
          fontWeight: FontWeight.bold,
          fontFamily: GoogleFonts.robotoMono().fontFamily,
        ),
      ),
    ],
  );
}
