import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

Widget claimComponent({
  required double sHeight,
  required double sWidth,
}) {
  return Padding(
    padding:
        const EdgeInsets.symmetric(horizontal: 20).copyWith(top: sHeight * .03),
    child: Material(
      elevation: 10,
      borderRadius: BorderRadius.circular(5),
      child: Container(
        width: sWidth * .9,
        height: sHeight * .09,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(5),
          color: Colors.white,
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            //cross and amount

            Row(
              children: [
                Image.asset(
                  "assets/images/cross.png",
                  height: sHeight * .06,
                  width: sWidth * .06,
                ),
                Text(
                  "10.00",
                  style: TextStyle(
                    fontSize: 15,
                    fontWeight: FontWeight.bold,
                    fontFamily: GoogleFonts.roboto().fontFamily,
                  ),
                )
              ],
            ),

            //claim button
            Container(
              width: sWidth * .28,
              height: sHeight * .04,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                border: Border.all(color: Color.fromRGBO(0, 0, 0, 1), width: 1),
              ),
              child: Center(
                child: Text(
                  "Claim",
                  style: TextStyle(
                    fontSize: 15,
                    fontWeight: FontWeight.bold,
                    fontFamily: GoogleFonts.roboto().fontFamily,
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    ),
  );
}
