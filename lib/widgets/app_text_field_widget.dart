import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

Widget appTextFieldWidget() {
  return Padding(
    padding: const EdgeInsets.symmetric(horizontal: 20),
    child: Material(
      elevation: 7,
      shadowColor: Color.fromRGBO(222, 222, 222, 0.86),
      borderRadius: BorderRadius.circular(10),
      child: TextField(
        textAlign: TextAlign.center,
        style: TextStyle(
          fontSize: 16,
          fontWeight: FontWeight.bold,
          fontFamily: GoogleFonts.robotoMono().fontFamily,
        ),
        decoration: InputDecoration(
          hintText: "Enter Your Mobile Number",
          hintStyle: TextStyle(
            color: Color.fromRGBO(4, 3, 2, 0.26),
          ),
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(10),
            borderSide: BorderSide(
              width: 1,
              color: Colors.black,
            ),
          ),
        ),
      ),
    ),
  );
}
