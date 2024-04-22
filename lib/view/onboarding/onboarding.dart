import 'package:flutter/material.dart';
import 'package:intro_screen_onboarding_flutter/introduction.dart';
import 'package:intro_screen_onboarding_flutter/introscreenonboarding.dart';
import 'package:shoezy_app/utils/colors.dart';
import 'package:shoezy_app/view/auth/auth.dart';

class OnBoardScreen extends StatelessWidget {
  final List<Introduction> list = [
    Introduction(
      title: 'Shoezy Style Hub',
      titleTextStyle: TextStyle(
          color: Colors.white, fontWeight: FontWeight.bold, fontSize: 30),
      subTitle:
          'Discover fashion-forward footwear on Shoezy. Personalize your style, explore top brands',
      subTitleTextStyle: TextStyle(color: Colors.white, fontSize: 15),
      imageUrl: 'assets/images/onboard1.png',
    ),
    Introduction(
      title: 'Footwear Wonderland',
      titleTextStyle: TextStyle(
        color: Colors.white,
        fontWeight: FontWeight.bold,
        fontSize: 30,
      ),
      subTitle:
          'Explore a wonderland of footwear on Shoezy. Shop sneakers, sandals, and more',
      subTitleTextStyle: TextStyle(color: Colors.white, fontSize: 15),
      imageUrl: 'assets/images/onboard2.png',
    ),
    Introduction(
      title: 'Every Step Counts',
      titleTextStyle: TextStyle(
          color: Colors.white, fontWeight: FontWeight.bold, fontSize: 30),
      subTitle:
          'Every step counts with Shoezy. Find shoes for every occasion, from casual to elegant',
      subTitleTextStyle: TextStyle(color: Colors.white, fontSize: 15),
      imageUrl: 'assets/images/onboard3.png',
    ),
    Introduction(
      title: 'Your Style, Your Step',
      titleTextStyle: TextStyle(
          color: Colors.white, fontWeight: FontWeight.bold, fontSize: 30),
      subTitle:
          'Explore the latest trends in footwear at Stride & Style Central. Elevate your fashion game ',
      subTitleTextStyle: TextStyle(color: Colors.white, fontSize: 15),
      imageUrl: 'assets/images/onborad5.png',
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return IntroScreenOnboarding(
      foregroundColor: AppColors.kPrimary,
      backgroudColor: AppColors.kBackground,
      introductionList: list,
      skipTextStyle: TextStyle(color: Colors.white),
      onTapSkipButton: () {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => Auth(),
          ), //MaterialPageRoute
        );
      },
    );
  }
}
