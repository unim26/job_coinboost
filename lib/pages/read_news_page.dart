import 'package:coinboost/services/ad_service.dart';
import 'package:coinboost/components/rewarding_level_page/navigation_component.dart';
import 'package:coinboost/pages/home_navigation_page.dart';
import 'package:coinboost/pages/task_page.dart';
import 'package:coinboost/widgets/app_bottom_navigation_bar_widget.dart';
import 'package:coinboost/widgets/app_button_widgets.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:google_mobile_ads/google_mobile_ads.dart';

class ReadNewsPage extends StatefulWidget {
  const ReadNewsPage({super.key});

  @override
  State<ReadNewsPage> createState() => _ReadNewsPageState();
}

class _ReadNewsPageState extends State<ReadNewsPage> {
  final AdService _adService = AdService();

  @override
  void initState() {
    WidgetsBinding.instance.addPostFrameCallback(
      (timeStamp) {
        _adService.loadBannerAd(context);
        _adService.loadRewardedAd();
        setState(() {});
      },
    );
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    final double sHeight = MediaQuery.of(context).size.height;
    final double sWidth = MediaQuery.of(context).size.width;
    return SafeArea(
      child: Scaffold(
        body: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 25),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              //space
              SizedBox(
                height: 10,
              ),
              //navigation
              navigationComponent(
                title: "Read News",
                sHeight: sHeight,
                sWidth: sWidth,
                onTap: () => Navigator.pop(context),
              ),

              //space
              SizedBox(
                height: sHeight * .07,
              ),

              //image
              ClipRRect(
                borderRadius: BorderRadius.circular(10),
                child: Hero(
                  tag: "task_animation",
                  child: Image.asset(
                    "assets/images/task2.png",
                    height: sHeight * .2,
                    width: sWidth * .9,
                    fit: BoxFit.cover,
                  ),
                ),
              ),

              //space
              SizedBox(
                height: sHeight * .05,
              ),

              //rules
              Text(
                "Rules of Task",
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                  fontFamily: GoogleFonts.robotoMono().fontFamily,
                ),
              ),

              //space
              SizedBox(
                height: sHeight * .03,
              ),

              Text(
                "1. Keep scrolling for 10 minutes.\n2. Keep clicking every 30 seconds.\n3. Don't leave still screen for more than 30 seconds.",
                style: TextStyle(
                  fontSize: 14,
                  fontWeight: FontWeight.w400,
                  fontFamily: GoogleFonts.roboto().fontFamily,
                ),
              ),

              //space
              SizedBox(
                height: sHeight * .05,
              ),

              //start button
              Padding(
                padding: EdgeInsets.only(right: sWidth * .4),
                child: Material(
                  elevation: 10,
                  borderRadius: BorderRadius.circular(20),
                  child: appButtonWidget(
                    bTitle: "Start Task",
                    fontSize: 16,
                    sHeight: sHeight,
                    onPressed: () {
                      //show ad
                      _adService.rewardedAd!.show(
                        onUserEarnedReward: (ad, reward) {
                          //give user something
                        },
                      );

                      //navigate to next page
                      Navigator.pushReplacement(
                        context,
                        MaterialPageRoute(
                          builder: (context) => TaskPage(),
                        ),
                      );
                    },
                  ),
                ),
              ),

              //space
              SizedBox(
                height: sHeight * .1,
              ),

              //banner ad
              _adService.bannerAd != null
                  ? Align(
                      alignment: Alignment.bottomCenter,
                      child: SafeArea(
                        child: SizedBox(
                          width: double.infinity,
                          height: _adService.bannerAd!.size.height.toDouble(),
                          child: AdWidget(ad: _adService.bannerAd!),
                        ),
                      ),
                    )
                  : Container(),
            ],
          ),
        ),

        //navigation bar
        bottomNavigationBar: appBottomNavigationBar(
          onTap: (index) {
            Navigator.pushAndRemoveUntil(
              context,
              MaterialPageRoute(
                builder: (context) => HomeNavigationPage(),
              ),
              (route) => route.isFirst,
            );
          },
        ),
      ),
    );
  }
}
