import 'package:flutter/material.dart';
import 'package:ui_9/constants.dart';

class CategoryItem extends StatelessWidget {
  final String title;
  final bool isActive;
  final VoidCallback press;
  const CategoryItem({
    super.key, 
    required this.title, 
    this.isActive=false,
    required this.press,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: press,
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20,vertical: 15),
        child: Column(
          children:<Widget> [
            Text(
              title,
              style: isActive 
              ? TextStyle(
                color: kTextColor,
                fontWeight: FontWeight.bold,
                )
              : TextStyle(fontSize: 12),
            ),
            if(isActive)
            Container(
              margin: EdgeInsets.symmetric(vertical: 5),
              height: 3,
              width: 22,
              decoration: BoxDecoration(
                color: kPrimaryColor,
                borderRadius: BorderRadius.circular(10),
              ),
            ),
          ],
        ),
      ),
    );
  }
}


