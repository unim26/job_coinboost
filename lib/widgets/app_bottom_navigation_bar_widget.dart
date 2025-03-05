import 'package:coinboost/constants/constants.dart';
import 'package:flutter/material.dart';

Widget appBottomNavigationBar({required onTap,}) {
  return BottomNavigationBar(
    onTap: onTap,
    backgroundColor: primaryColor,
    showSelectedLabels: false,
    showUnselectedLabels: false,
    items: [
      BottomNavigationBarItem(
        icon: Image.asset("assets/images/home.png", height: 30, width: 30),
        label: "Home",
      ),
      BottomNavigationBarItem(
        icon: Image.asset("assets/images/level.png", height: 30, width: 30),
        label: "levels",
      ),
      BottomNavigationBarItem(
        icon: Image.asset("assets/images/profile.png", height: 30, width: 30),
        label: "profile",
      ),
    ],
  );
}
