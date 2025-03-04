import 'package:coinboost/constants/constants.dart';
import 'package:coinboost/widgets/app_button_widgets.dart';
import 'package:coinboost/widgets/app_text_field_widget.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class OnBoardingPage extends StatelessWidget {
  const OnBoardingPage({super.key});

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
                height: sHeight * .25,
                width: sWidth * .3,
              ),

              //app name
              Text(
                "COINBOOST",
                style: Theme.of(context).textTheme.titleLarge!.copyWith(
                      fontWeight: FontWeight.bold,
                      color: primaryColor,
                      fontFamily: GoogleFonts.robotoMono().fontFamily,
                    ),
              ),

              //image
              Image.asset(
                "assets/images/onboardImage.png",
                height: sHeight * .4,
                width: sWidth * .5,
              ),

              //text field ------> for mobile number
              appTextFieldWidget(),

              //space
              SizedBox(
                height: 30,
              ),

              //continue button
              appButtonWidget(sHeight: sHeight),
            ],
          ),
        ),
      ),
    );
  }
}
