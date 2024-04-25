import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:shoezy_app/app/controller/navbar.dart';
import 'package:shoezy_app/app/view/home/Cart/cart.dart';
import 'package:shoezy_app/app/view/home/HomePage/homepage.dart';
import 'package:shoezy_app/app/view/home/Profile/profile.dart';
import 'package:shoezy_app/app/view/home/WishList/wishlist.dart';
import 'package:shoezy_app/app/view/widgets/navbar.dart';

class MainPage extends StatelessWidget {
  const MainPage({super.key});

  @override
  Widget build(BuildContext context) {
    final provider = Provider.of<PageIndexProvider>(context);
    final List<Widget> _pages = [
      const HomePage(),
      const WishListPage(),
      const CartPage(),
      ProfilePage(),
    ];

    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.black,
        body: _pages[provider.currentIndex],
        bottomNavigationBar: CustomBottomNavigationBar(),
      ),
    );
  }
}
