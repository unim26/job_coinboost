import 'package:coinboost/constants/constants.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

Widget taskBoxWidget({
  required double sHeight,
  required double sWidth,
  required String coverImage,
  required String taskOption,
  required String rewardAmount,
  required String heroTag,
  void Function()? onTap,
}) {
  return Padding(
    padding: const EdgeInsets.symmetric(horizontal: 20),
    child: GestureDetector(
      onTap: onTap,
      child: Container(
        height: sHeight * .23,
        width: double.infinity,
        decoration: BoxDecoration(
          color: primaryColor,
          borderRadius: BorderRadius.circular(10),
          border: Border.all(
            color: Color.fromRGBO(206, 206, 206, 1),
            width: 1,
          ),
        ),
        child: ClipRRect(
          borderRadius: BorderRadius.circular(10),
          child: Stack(
            fit: StackFit.expand,
            children: [
              //image
              Hero(
                tag: heroTag,
                child: Image.asset(
                  coverImage,
                  fit: BoxFit.cover,
                ),
              ),

              //task detail
              Positioned(
                bottom: 0,
                child: Container(
                  height: sHeight * .045,
                  width: sWidth * .9,
                  decoration: BoxDecoration(
                    color: Color.fromRGBO(255, 255, 255, .88),
                    borderRadius: BorderRadius.only(
                      bottomLeft: Radius.circular(10),
                      bottomRight: Radius.circular(10),
                    ),
                    border: Border.all(
                      color: Color.fromRGBO(48, 0, 80, .11),
                      width: 1,
                    ),
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      //text
                      Text(
                        taskOption,
                        style: TextStyle(
                          fontSize: 14,
                          fontWeight: FontWeight.bold,
                          fontFamily: GoogleFonts.robotoMono().fontFamily,
                        ),
                      ),

                      //reward amount
                      Text(
                        "\$$rewardAmount",
                        style: TextStyle(
                          fontSize: 14,
                          fontWeight: FontWeight.bold,
                          fontFamily: GoogleFonts.robotoMono().fontFamily,
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
    ),
  );
}
