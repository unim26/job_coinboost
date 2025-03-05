import 'package:coinboost/services/ad_service.dart';
import 'package:coinboost/components/home_page/reward_options_component.dart';
import 'package:coinboost/components/home_page/user_detail_component.dart';
import 'package:coinboost/components/home_page/user_level_component.dart';
import 'package:coinboost/components/home_page/user_wallet_component.dart';
import 'package:coinboost/pages/read_news_page.dart';
import 'package:coinboost/widgets/task_box_widgets.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  //ad services
  final AdService _adService = AdService();

  @override
  void initState() {
    _adService.loadInterstitialAd();
    super.initState();
  }

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
              height: sHeight * .02,
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
              height: sHeight * .02,
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
              height: sHeight * .01,
            ),

            //reward option
            rewardOptionComponents(),

            //space
            SizedBox(
              height: sHeight * .025,
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
              height: sHeight * .024,
            ),

            //task 1
            taskBoxWidget(
              sHeight: sHeight,
              sWidth: sWidth,
              heroTag: "",
              coverImage: "assets/images/task1.png",
              taskOption: "Play Game",
              rewardAmount: "10",
            ),

            SizedBox(
              height: sHeight * .02,
            ),

            //task 2
            taskBoxWidget(
              sHeight: sHeight,
              sWidth: sWidth,
              coverImage: "assets/images/task2.png",
              taskOption: "Read News",
              rewardAmount: "5",
              heroTag: "task_animation",
              onTap: () async {
                _adService.loadInterstitialAd();

                //show ad
                _adService.interstitialAd?.show();

                //navigate to next page
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => ReadNewsPage(),
                  ),
                );

                //load interstitialAd again
                _adService.loadInterstitialAd();
              },
            ),
          ],
        ),
      ),
    );
  }
}
