import 'package:coinboost/pages/home_page.dart';
import 'package:coinboost/pages/rewarding_level_page.dart';
import 'package:coinboost/widgets/app_bottom_navigation_bar_widget.dart';
import 'package:flutter/material.dart';

class HomeNavigationPage extends StatefulWidget {
  const HomeNavigationPage({super.key});

  @override
  State<HomeNavigationPage> createState() => _HomeNavigationPageState();
}

class _HomeNavigationPageState extends State<HomeNavigationPage> {
  //variable
  int currentIndex = 0;

  //list pages
  final List<Widget> _pages = [
    //homepage
    HomePage(),

    //rewarding page
    RewardingLevelPage(),

    //profile page
    Container(),
  ];

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        //body
        body: _pages[currentIndex],
        //navigation bar
        bottomNavigationBar: appBottomNavigationBar(onTap: (index) {
          setState(() {
            if (index == 2) {
              currentIndex = 1;
            } else {
              currentIndex = index;
            }
          });
        }),
      ),
    );
  }
}
