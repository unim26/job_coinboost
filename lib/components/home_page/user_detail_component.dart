import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

Widget userDetailComponent() {
  return Row(
    children: [
      //user image
      CircleAvatar(
        radius: 14,
        child: Image.asset("assets/images/profilepic.png"),
      ),

      //space
      SizedBox(
        width: 5,
      ),

      //user name
      Text(
        "John Doe",
        style: TextStyle(
          fontSize: 14,
          fontWeight: FontWeight.bold,
          fontFamily: GoogleFonts.robotoMono().fontFamily,
        ),
      ),
    ],
  );
}
