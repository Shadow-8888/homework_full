import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:ui_9/constants.dart';
AppBar homeAppBar(BuildContext context) {
    return AppBar(
      backgroundColor: Colors.white,
      centerTitle: true,
      leading: IconButton(
        icon: SvgPicture.asset("assets/icons/menu.svg"),
        onPressed: () {},
      ),
      title: RichText(
        text: TextSpan(
          style: Theme.of(context)
          .textTheme
          .titleLarge!
          .copyWith(fontWeight: FontWeight.bold),
          children: [
            TextSpan(
              text: "Punk",
              style: TextStyle(color:ksecondaryColor),
            ),
            TextSpan(
              text: "Food",
              style: TextStyle(color: kPrimaryColor),
            ),
          ],
        ),
      ),
      actions: <Widget>[
        IconButton(
          icon: SvgPicture.asset("assets/icons/notification.svg"),
          onPressed: () {},
        ),
      ],
    );
  }