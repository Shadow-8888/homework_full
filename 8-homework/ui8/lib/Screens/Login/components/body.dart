import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:ui8/Screens/Login/components/background.dart';
import 'package:ui8/Screens/Signup/components/signup_screen.dart';
import 'package:ui8/components/already_have_an_account_acheck.dart';
import 'package:ui8/components/rounded_button.dart';
import 'package:ui8/components/rounded_input_field.dart';
import 'package:ui8/components/rounded_password_field.dart';

class Body extends StatelessWidget {
  const Body({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Background(
      child: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              "LOGIN",
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
            SizedBox(height: size.height *0.03),
            SvgPicture.asset(
              "assets/icons/login.svg", 
              height: size.height * 0.35,
            ),
            SizedBox(height: size.height *0.03),
            RoundedInputField(
              hindText: "Your Email",
              onChanged: (value) {},
            ),
            RoundedPasswordField(onChanged: (value) {},
            ),
            SizedBox(height: size.height *0.03),
            RoundedButton(
              text: "LOGIN",
              press: () {},
            ),
            AlreadyHaveAnAccountCheck(
              press: () {
                Navigator.push(
                  context, 
                  MaterialPageRoute(
                    builder: (context){
                      return SignupScreen();
                    },
                  ),
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}

