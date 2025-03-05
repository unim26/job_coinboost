import 'package:coinboost/services/ad_service.dart';
import 'package:coinboost/components/rewarding_level_page/level_box_component.dart';
import 'package:coinboost/components/rewarding_level_page/navigation_component.dart';
import 'package:flutter/material.dart';
import 'package:google_mobile_ads/google_mobile_ads.dart';

class RewardingLevelPage extends StatefulWidget {
  const RewardingLevelPage({super.key});

  @override
  State<RewardingLevelPage> createState() => _RewardingLevelPageState();
}

class _RewardingLevelPageState extends State<RewardingLevelPage> {
  final AdService _adService = AdService();

  @override
  void initState() {
    WidgetsBinding.instance.addPostFrameCallback(
      (timeStamp) {
        _adService.loadBannerAd(context);
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
        body: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            ////space
            SizedBox(
              height: sHeight * .02,
            ),
            //navigate back option and title
            navigationComponent(
              title: "Rewarding Levels",
              sHeight: sHeight,
              sWidth: sWidth,
            ),

            //level box 1
            levelBoxComponents(
              sHeight: sHeight,
              sWidth: sWidth,
              level: "01",
              minimumWithdrawal: "50",
              currentEarning: "25",
            ),

            //level box 2
            levelBoxComponents(
              sHeight: sHeight,
              sWidth: sWidth,
              level: "02",
              minimumWithdrawal: "100",
              currentEarning: "0",
            ),

            //level box 3
            levelBoxComponents(
              sHeight: sHeight,
              sWidth: sWidth,
              level: "03",
              minimumWithdrawal: "150",
              currentEarning: "0",
            ),

            //space
            SizedBox(
              height: sHeight * .02,
            ),

            //banner ad
            _adService.bannerAd != null
                ? Align(
                    alignment: Alignment.bottomCenter,
                    child: SafeArea(
                      child: SizedBox(
                        width: _adService.bannerAd!.size.width.toDouble(),
                        height: _adService.bannerAd!.size.height.toDouble(),
                        child: AdWidget(ad: _adService.bannerAd!),
                      ),
                    ),
                  )
                : Container()
          ],
        ),
      ),
    );
  }
}
