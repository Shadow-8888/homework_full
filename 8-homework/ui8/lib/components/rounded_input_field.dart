import 'package:flutter/material.dart';
import 'package:ui8/components/text_field_container.dart';
import 'package:ui8/constants.dart';

class RoundedInputField extends StatelessWidget {
  final String hindText;
  final IconData icon;
  final ValueChanged <String> onChanged;
  const RoundedInputField({
    super.key, 
    required this.hindText, 
    this.icon =Icons.person, 
    required this.onChanged,
  });

  @override
  Widget build(BuildContext context) {
    return TextFieldContainer(
      child: TextField(
        onChanged: onChanged,
        decoration: InputDecoration(
          icon: Icon(
            icon,
            color: kPrimaryColor,
          ),
          hintText: hindText,
          border: InputBorder.none,
        ),
      ),
    );
  }
}

