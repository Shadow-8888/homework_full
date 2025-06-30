import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:ui6/constants.dart';

class BottomNavBar extends StatelessWidget {
  const BottomNavBar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 40, vertical: 10),
      height: 80,
      color: Colors.white,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          BottomNavItem(
            title: "Today",
            svgSrc: "assets/icons/calendar.svg",
            press: () {},
          ),
          BottomNavItem(
            title: "All Exercises",
            svgSrc: "assets/icons/gym.svg",
            isActive: true,
            press: () {},
          ),
          BottomNavItem(
            title: "Settings",
            svgSrc: "assets/icons/Settings.svg",
            press: () {},
          ),
        ],
      ),
    );
  }
}

class BottomNavItem extends StatelessWidget {
  final String svgSrc;
  final String title;
  final VoidCallback press;
  final bool isActive;
  const BottomNavItem({
    super.key, 
    required this.svgSrc, 
    required this.title, 
    required this.press, 
    this.isActive = false,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: press,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: <Widget>[
          SvgPicture.asset(
            svgSrc, 
            colorFilter:ColorFilter.mode(
              isActive ? kActiveIconColor : kTextColor,
              BlendMode.srcIn,
            ),
          ),
          Text(
            title, 
            style: TextStyle(color: isActive ? kActiveIconColor : kTextColor),
          ),
        ],
      ),
    );
  }
}

