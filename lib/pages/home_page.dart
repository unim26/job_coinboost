import 'package:coinboost/components/home_page/reward_options_component.dart';
import 'package:coinboost/components/home_page/user_detail_component.dart';
import 'package:coinboost/components/home_page/user_level_component.dart';
import 'package:coinboost/components/home_page/user_wallet_component.dart';
import 'package:coinboost/constants/constants.dart';
import 'package:coinboost/widgets/reward_option_box_widget.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    final double sHeight = MediaQuery.of(context).size.height;
    final double sWidth = MediaQuery.of(context).size.width;
    return SafeArea(
      child: Scaffold(
        body: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            //space
            SizedBox(
              height: 15,
            ),
            //user profile detail
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                //user detail
                userDetailComponent(),

                Row(
                  children: [
                    //user level
                    userLevelComponent(sHeight: sHeight, sWidth: sWidth),

                    //space
                    SizedBox(
                      width: 10,
                    ),

                    //user wallet
                    userWalletComponent(sHeight: sHeight, sWidth: sWidth)
                  ],
                )
              ],
            ),

            //space
            SizedBox(
              height: 30,
            ),

            //daily reward info
            Text(
              "Claim your Daily Reward",
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
                color: Color.fromRGBO(150, 82, 0, 1),
                fontFamily: GoogleFonts.roboto().fontFamily,
              ),
            ),

            //space
            SizedBox(
              height: 15,
            ),

            //reward option
            rewardOptionComponents(),

            //space
            SizedBox(
              height: 25,
            ),

            //text
            Text(
              "Do Tasks, Earn Reward",
              style: TextStyle(
                fontSize: 20,
                color: Color.fromRGBO(150, 82, 0, 1),
                fontWeight: FontWeight.bold,
                fontFamily: GoogleFonts.roboto().fontFamily,
              ),
            ),

            //text
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Text(
                textAlign: TextAlign.center,
                "You can do these tasks as many times as you want to",
                style: TextStyle(
                  fontSize: 14,
                  fontWeight: FontWeight.bold,
                  fontFamily: GoogleFonts.robotoMono().fontFamily,
                ),
              ),
            ),

            //space
            SizedBox(
              height: 25,
            ),

            //task 1
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
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
                      Image.asset(
                        "assets/images/task1.png",
                        fit: BoxFit.cover,
                      ),

                      //task detail
                      Positioned(
                        bottom: 0,
                        child: Container(
                          height: sHeight * .042,
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
                          child: Row(),//TODO
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),

            //task 2
          ],
        ),

        //navigation bar
        bottomNavigationBar: BottomNavigationBar(
          backgroundColor: primaryColor,
          showSelectedLabels: false,
          showUnselectedLabels: false,
          items: [
            BottomNavigationBarItem(
              icon:
                  Image.asset("assets/images/home.png", height: 30, width: 30),
              label: "Home",
            ),
            BottomNavigationBarItem(
              icon:
                  Image.asset("assets/images/level.png", height: 30, width: 30),
              label: "levels",
            ),
            BottomNavigationBarItem(
              icon: Image.asset("assets/images/profile.png",
                  height: 30, width: 30),
              label: "profile",
            ),
          ],
        ),
      ),
    );
  }
}
