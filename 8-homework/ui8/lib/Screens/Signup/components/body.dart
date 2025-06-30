import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:ui8/Screens/Login/login_screen.dart';
import 'package:ui8/Screens/Signup/components/background.dart';
import 'package:ui8/Screens/Signup/components/or_divider.dart';
import 'package:ui8/Screens/Signup/components/social_icon.dart';
import 'package:ui8/components/already_have_an_account_acheck.dart';
import 'package:ui8/components/rounded_button.dart';
import 'package:ui8/components/rounded_input_field.dart';
import 'package:ui8/components/rounded_password_field.dart';

class Body extends StatelessWidget {
  final Widget child;

  const Body(
    {super.key, 
    required this.child});

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Background(
      child: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              "SIGN UP",
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
            SizedBox(height: size.height * 0.03),
            SvgPicture.asset(
              "assets/icons/signup.svg",
              height: size.height *0.35,
            ),
            RoundedInputField(
              hindText: "Your Email",
              onChanged: (value) {},
            ),
            RoundedPasswordField(
              onChanged: (value) {},
            ),
            RoundedButton(
              text: "SIGNUP",
              press: () {},
            ),
            SizedBox(height: size.height * 0.03),
            AlreadyHaveAnAccountCheck(
              login: false,
              press: () {
                Navigator.push(
                context, 
                MaterialPageRoute(
                  builder: (context){
                    return LoginScreen();
                  },
                ),
              );
              },
            ),
            OrDivider(),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                SocalIcon(
                  iconSrv: "assets/icons/facebook.svg",
                  press: () {},
                ),
                 SocalIcon(
                  iconSrv: "assets/icons/twitter.svg",
                  press: () {},
                ),
                 SocalIcon(
                  iconSrv: "assets/icons/google-plus.svg",
                  press: () {},
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

