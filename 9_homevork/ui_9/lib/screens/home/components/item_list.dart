import 'package:flutter/material.dart';
import 'package:ui_9/screens/details/details_screen.dart';
import 'package:ui_9/screens/home/components/item_card.dart';

class ItemList extends StatelessWidget {
  const ItemList({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
    scrollDirection: Axis.horizontal,
     child: Row(
      mainAxisAlignment: MainAxisAlignment.start, // Chapga joylashtiradi
      children: <Widget>[
        ItemCard(
          svgSrc: "assets/icons/burger_beer.svg",
          title: "Burger & Beer",
          shopName: "MacDonald`s",
          press: () {
            Navigator.push(
              context, 
              MaterialPageRoute(
                builder: (context){
                  return DetailsScreen();
                },
              ),
            );
          },
        ),
        ItemCard(
          svgSrc: "assets/icons/chinese_noodles.svg",
          title: "Chinese & Noodles",
          shopName: "Wendy",
          press: () {},
        ),
        ItemCard(
          svgSrc: "assets/icons/burger_beer.svg",
          title: "Burger & Beer",
          shopName: "MacDonald`s",
          press: () {},
        ),
      ],
             ),
             );
  }
}

