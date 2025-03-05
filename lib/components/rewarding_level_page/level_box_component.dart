import 'package:coinboost/constants/constants.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

Widget levelBoxComponents({
  required double sHeight,
  required double sWidth,
  required String level,
  required String minimumWithdrawal,
  required String currentEarning,
}) {
  final double earningPercentage =
      (int.parse(currentEarning) / int.parse(minimumWithdrawal)) * 100;
  return Padding(
    padding: const EdgeInsets.symmetric(horizontal: 30).copyWith(top: 10),
    child: Material(
      elevation: 10,
      shadowColor: Color.fromRGBO(0, 0, 0, 0.25),
      borderRadius: BorderRadius.circular(20),
      child: Container(
        height: sHeight * .22,
        width: double.infinity,
        decoration: BoxDecoration(
          color: primaryColor,
          borderRadius: BorderRadius.circular(20),
          border: Border.all(color: primaryColor, width: 1),
        ),
        //level
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 10, left: 20),
              child: Text(
                "Level $level",
                style: TextStyle(
                  fontSize: 14,
                  fontWeight: FontWeight.bold,
                  color: Color.fromRGBO(255, 255, 255, 1),
                  fontFamily: GoogleFonts.robotoMono().fontFamily,
                ),
              ),
            ),

            SizedBox(
              height: sHeight * .006,
            ),

            //front box
            Container(
              width: double.infinity,
              height: sHeight * .173,
              decoration: BoxDecoration(
                color: Color.fromRGBO(255, 255, 255, 1),
                borderRadius: BorderRadius.circular(15).copyWith(
                    bottomLeft: Radius.circular(20),
                    bottomRight: Radius.circular(20)),
                border: Border.all(color: primaryColor, width: 1),
              ),

              //level detail
              child: Padding(
                padding: const EdgeInsets.only(left: 20),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    //minimum requirement detail
                    Text(
                      "Minimum Withdrawal = \$$minimumWithdrawal",
                      style: TextStyle(
                        fontSize: 15,
                        fontWeight: FontWeight.bold,
                        color: primaryColor,
                        fontFamily: GoogleFonts.robotoMono().fontFamily,
                      ),
                    ),

                    //current earned detail
                    Text(
                      "Your earnings = \$$currentEarning",
                      style: TextStyle(
                        fontSize: 15,
                        fontWeight: FontWeight.bold,
                        color: Color.fromRGBO(85, 85, 85, .9),
                        fontFamily: GoogleFonts.robotoMono().fontFamily,
                      ),
                    ),

                    SizedBox(
                      height: sHeight * .02,
                    ),

                    //progress
                    Padding(
                      padding: const EdgeInsets.only(right: 20),
                      child: Container(
                        decoration: BoxDecoration(
                            border: Border.all(color: primaryColor, width: 1),
                            borderRadius: BorderRadius.circular(5)),
                        child: Stack(
                          children: [
                            LinearProgressIndicator(
                              value: earningPercentage / 100,
                              color: primaryColor,
                              backgroundColor: Colors.transparent,
                              borderRadius: BorderRadius.circular(5),
                              minHeight: sHeight * .023,
                            ),

                            //text

                            Positioned(
                              left: sWidth * .15,
                              child: Text(
                                "${earningPercentage.toInt()} %",
                                style: TextStyle(
                                  fontSize: 12,
                                  fontWeight: FontWeight.bold,
                                  color: Color.fromRGBO(255, 255, 255, 1),
                                  fontFamily:
                                      GoogleFonts.robotoMono().fontFamily,
                                ),
                              ),
                            )
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    ),
  );
}
