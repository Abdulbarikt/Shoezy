import 'package:flutter/material.dart';
import 'package:shoezy_app/utils/colors.dart';
import 'package:shoezy_app/view/auth/login/login.dart';
import 'package:shoezy_app/view/widgets/p_button.dart';

import 'signup/signup.dart';

class Auth extends StatelessWidget {
  const Auth({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.kBackground,
      appBar: AppBar(
        backgroundColor: AppColors.kBackground,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Image.asset(
              'assets/images/onboard4.png',
              height: 230,
              width: 230,
            ),
            SizedBox(
              height: 50,
            ),
            Text(
              'Step into Shoezy to jumpstart your footwear journey',
              textAlign: TextAlign.center,
              style: TextStyle(
                  fontSize: 30,
                  color: Colors.white,
                  fontWeight: FontWeight.bold),
            ),
            SizedBox(
              height: 20,
            ),
            Text(
              'Discover top brands, unlock exclusive deals',
              style: TextStyle(fontSize: 15, color: Colors.white),
            ),
            SizedBox(
              height: 40,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                PButton(
                  height: 50,
                  width: 150,
                  onTap: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => LoginPage()));
                  },
                  text: "SIGN IN",
                  fontSize: 20,
                ),
                PButton(
                  height: 50,
                  width: 150,
                  onTap: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => SignUpPage()));
                  },
                  text: "SIGN UP",
                  fontSize: 20,
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
