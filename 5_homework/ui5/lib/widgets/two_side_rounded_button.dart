import 'package:flutter/material.dart';
import 'package:ui5/consttants.dart';

class TwoSideRounedButton extends StatelessWidget {
  final String text;
  final double radious;
  final GestureTapCallback press;
  const TwoSideRounedButton({
    super.key, 
    required this.text, 
    this.radious=29, 
    required this.press,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: press,
      child: Container(
        alignment: Alignment.center,
        padding: EdgeInsets.symmetric(vertical: 10),
        decoration: BoxDecoration(
          color: kBlackColor,
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(radious),
            bottomRight: Radius.circular(radious),
          ),
        ),
        child: Text(
          text,
          style: TextStyle(color: Colors.white),
        ),
      ),
    );
  }
}

