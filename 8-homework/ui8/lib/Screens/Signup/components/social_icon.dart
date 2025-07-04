import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
//import 'package:flutter_svg/flutter/svg.dart';
import 'package:ui8/constants.dart';

class SocalIcon extends StatelessWidget {
  final String iconSrv;
  final VoidCallback press;
  const SocalIcon({
    super.key, 
    required this.iconSrv, 
    required this.press,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: press,
      child: Container(
        margin: EdgeInsets.symmetric(horizontal: 10),
        padding: EdgeInsets.all(20),
        decoration: BoxDecoration(
          border: Border.all(
            width: 2,
            color: kPrimaryLightColor
          ),
          shape: BoxShape.circle
        ),
        child: SvgPicture.asset(
          iconSrv,
          height: 20,
          width: 20,
        ),
      ),
    );
  }
}


