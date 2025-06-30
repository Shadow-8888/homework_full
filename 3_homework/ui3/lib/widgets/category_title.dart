import 'package:flutter/material.dart';
import 'package:ui3/constants.dart';


class CategoryTitle extends StatelessWidget {
  final String title;
  final bool active;

  const CategoryTitle({
    super.key,
    required this.title,
    this.active = false,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 20, right: 30),
      child: Text(
        title,
        style: (Theme.of(context).textTheme.labelLarge ?? const TextStyle()).copyWith(
          color: active ? kPrimaryColor : kTextColor.withAlpha(150),
        ),
      ),
    );
  }
}

