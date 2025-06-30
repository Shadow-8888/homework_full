import 'package:flutter/material.dart';
import 'package:ui_9/components/body.dart';
import 'package:ui_9/constants.dart';
import 'package:ui_9/screens/details/components/app_bar.dart';

class DetailsScreen extends StatelessWidget {
  const DetailsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kPrimaryColor,
      appBar: detailsAppBar(),
      body: Body(),
    );
  }
}

