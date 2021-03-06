import 'package:flutter/material.dart';
import 'package:webviewDemo/Screens/Login/components/background.dart';
import 'package:webviewDemo/Screens/Signup/signup_screen.dart';
import 'package:webviewDemo/Screens/app/clae.dart';

import 'package:webviewDemo/components/already_have_an_account_acheck.dart';
import 'package:webviewDemo/components/rounded_button.dart';
import 'package:webviewDemo/components/rounded_input_field.dart';
import 'package:webviewDemo/components/rounded_password_field.dart';
import 'package:flutter_svg/svg.dart';


class Body extends StatelessWidget {
  const Body({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    String username = '';
    String password = '';

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
            SizedBox(height: size.height * 0.03),
            SvgPicture.asset(
              "assets/icons/login.svg",
              height: size.height * 0.35,
            ),
            SizedBox(height: size.height * 0.03),
            RoundedInputField(
              hintText: "Your Email",
              onChanged: (value) {
                username = value;
              },
            ),
            RoundedPasswordField(
              onChanged: (value) {
                password = value;
              },
            ),
            RoundedButton(
              text: "LOGIN",
              press: () {
                if (username != '' && password != '') {
                  Navigator.push(context, MaterialPageRoute(builder: (context) => Clae()));
                }
              },
            ),
            SizedBox(height: size.height * 0.03),
            AlreadyHaveAnAccountCheck( 
              press: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) {
                      return SignUpScreen();
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
