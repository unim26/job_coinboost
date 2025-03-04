import 'package:coinboost/constants/constants.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../widgets/reward_option_box_widget.dart';

Widget rewardOptionComponents() {
  return Padding(
    padding: const EdgeInsets.symmetric(horizontal: 10),
    child: Row(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: [
        //first option
        rewardOptionBoxWidget(
          width: 30,
          height: 30,
          fontSize: 8,
        ),

        //second option
        rewardOptionBoxWidget(
          width: 40,
          height: 40,
          fontSize: 9,
        ),

        //third option
        rewardOptionBoxWidget(
          width: 50,
          height: 50,
          fontSize: 11,
        ),

        //fourth option
        Material(
          elevation: 10,
          borderRadius: BorderRadius.circular(10),
          child: Container(
            width: 60,
            height: 60,
            decoration: BoxDecoration(
              color: Colors.white,
              border: Border.all(color: primaryColor, width: 1),
              borderRadius: BorderRadius.circular(10),
            ),
            child: Center(
              child: Text(
                "\$2\nAD",
                style: TextStyle(
                  fontSize: 15,
                  fontWeight: FontWeight.bold,
                  color: primaryColor,
                  fontFamily: GoogleFonts.robotoMono().fontFamily,
                ),
              ),
            ),
          ),
        ),

        //fifth option
        rewardOptionBoxWidget(
          width: 50,
          height: 50,
          fontSize: 11,
        ),

        //sixth option
        rewardOptionBoxWidget(
          width: 40,
          height: 40,
          fontSize: 9,
        ),

        //seventh option
        rewardOptionBoxWidget(
          width: 30,
          height: 30,
          fontSize: 8,
        ),
      ],
    ),
  );
}
