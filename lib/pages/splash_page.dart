import 'package:coinboost/constants/constants.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class SplashPage extends StatelessWidget {
  const SplashPage({super.key});

  @override
  Widget build(BuildContext context) {
    final double sHeight = MediaQuery.of(context).size.height;
    final double sWidth = MediaQuery.of(context).size.width;
    return SafeArea(
      child: Scaffold(
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              //logo
              Image.asset(
                "assets/images/logo.png",
                height: sHeight * .4,
                width: sWidth * .6,
              ),

              //app name
              Text(
                "COINBOOST",
                style: Theme.of(context).textTheme.headlineMedium!.copyWith(
                      fontWeight: FontWeight.bold,
                      color: primaryColor,
                      fontFamily: GoogleFonts.robotoMono().fontFamily,
                    ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
