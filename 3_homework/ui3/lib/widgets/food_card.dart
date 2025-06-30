import 'package:flutter/material.dart';
import 'package:ui3/constants.dart';

class FoodCard extends StatelessWidget {
  final String title;
  final String ingredient;
  final String image;
  final int price;
  final String calories;
  final String description;
  final VoidCallback press;


  const FoodCard({
    super.key, 
    required this.title, 
    required this.ingredient, 
    required this.image, 
    required this.price, 
    required this.calories, 
    required this.description,
    required this.press,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: press,
      child: Container(
        margin:EdgeInsets.only(left: 20),
        height: 400,
        width: 270,
        child: Stack(
      //    alignment: Alignment.topLeft,
          children: <Widget>[
            Positioned(
              right: 0,
              bottom: 0,
              child: Container(
                height: 380,
                width: 250,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(34),
                  color: kPrimaryColor.withAlpha((255*0.23).toInt())
                ),
              ),
            ),
            Positioned(
              top: 10,
              left: 10,
              child: Container(
                height: 181,
                width: 181,
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  color: kPrimaryColor.withAlpha((255*0.6).toInt()),
                ),
              ),
            ),
            Positioned(
              top: 0,
              left: -50,
              child: Container(
                height: 184,
                width: 276,
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage(image),
                  ),
                ),
              ),
            ),
            Positioned(
              right: 20,
              top: 80,
              child: Text(
                "\$$price",
                style: Theme.of(context)
                .textTheme
                .headlineMedium
                ?.copyWith(color: kPrimaryColor),
              ),
            ),
            Positioned(
              top: 201,
              left: 40,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Text(
                    title, 
                    style: Theme.of(context).textTheme.titleMedium,
                  ),
                  Text(
                    "with $ingredient",
                    style: TextStyle(
                      color: kPrimaryColor.withAlpha((255*0.4).toInt()),
                    ),
                  ),
                  SizedBox(height: 16),
                  Text(
                    description,
                    maxLines: 3,
                    style: TextStyle(color: kTextColor.withOpacity(.65),
                    ),
                  ),
                  SizedBox(height: 16),
                  Text(calories,
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
