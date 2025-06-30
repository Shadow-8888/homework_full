/*import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:ui_9/components/search_box.dart';
import 'package:ui_9/constants.dart';
import 'package:ui_9/screens/home/components/category_list.dart';


class Body extends StatelessWidget{
  const Body({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        SearchBox(
          onChanged: (value) {},
        ),
        CategoryList(),
        Row(
          mainAxisSize: MainAxisSize.min,
          children: <Widget>[
            Expanded(child: ItemCard()),
          ],
        ),
      ],
    );
  }
}

class ItemCard extends StatelessWidget {
  const ItemCard({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      margin: EdgeInsets.only(left: 20,right: 15,top: 20,bottom: 20),
      width: size.width *0.9,
      padding: EdgeInsets.all(20),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(10),
        boxShadow: [
          BoxShadow(
            offset: Offset(0, 4),
            blurRadius: 20,
            color: Color(0xFFB0CCE1).withAlpha(32),
          ),
        ],
      ),
      child: Material(
        color: Colors.transparent,
        child: InkWell(
          onTap: () {},
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              InkWell(
                onTap: () {},
     
     
              ),
              Container(
                margin: EdgeInsets.only(bottom: 15),
                padding: EdgeInsets.all(25),
                decoration: BoxDecoration(
                  color: kPrimaryColor.withAlpha(13),
                  shape: BoxShape.circle,
                ),
                child: SvgPicture.asset(
                  "assets/icons/burger_beer.svg",
                  width: size.width * 0.18,
                ),
              ),
              Text("Burger & Beer"),
              SizedBox(height: 10),
              Text("Macdonalds",
              style: TextStyle(fontSize: 12),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
*/
import 'package:flutter/material.dart';
//import 'package:flutter_svg/flutter_svg.dart';
//import 'package:flutter_svg/flutter_svg.dart';
import 'package:ui_9/components/search_box.dart';
//import 'package:ui_9/constants.dart';
//import 'package:ui_9/constants.dart';
import 'package:ui_9/screens/home/components/category_list.dart';
import 'package:ui_9/screens/home/components/discount_card.dart';
import 'package:ui_9/screens/home/components/item_list.dart';

class Body extends StatelessWidget {
  const Body({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        SearchBox(
          onChanged: (value) {},
        ),
        CategoryList(),
        ItemList(),
        DiscountCard(),
      ],
    );
  }
}

