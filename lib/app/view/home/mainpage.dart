import 'package:flutter/material.dart';
import 'package:shoezy_app/app/utils/colors.dart';
import 'package:shoezy_app/app/view/home/cart.dart';
import 'package:shoezy_app/app/view/home/homepage.dart';
import 'package:shoezy_app/app/view/home/profile.dart';
import 'package:shoezy_app/app/view/home/wishlist.dart';
import 'package:shoezy_app/app/view/widgets/navbar.dart'; // Make sure the path is correct

class MainPage extends StatefulWidget {
  const MainPage({super.key});

  @override
  _MainPageState createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  int _currentIndex = 0;

  final List<Widget> _pages = [
    const HomePage(),
    const WishListPage(),
    const CartPage(),
    ProfilePage(),
  ];

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: AppColors.kHint,
        body: _pages[_currentIndex],
        bottomNavigationBar: CustomBottomNavigationBar(
          currentIndex: _currentIndex,
          onTap: (index) {
            setState(() {
              _currentIndex = index;
            });
          },
        ),
      ),
    );
  }
}
