import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:provider/provider.dart';
import 'package:shoezy_app/app/controller/navbar.dart';
import 'package:shoezy_app/app/utils/colors.dart';

class CustomBottomNavigationBar extends StatelessWidget {
  const CustomBottomNavigationBar({super.key});

  @override
  Widget build(BuildContext context) {
    final provider = Provider.of<PageIndexProvider>(context);
    return BottomAppBar(
      color: AppColors.kBackground,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: List.generate(4, (index) {
          IconData iconData;
          String label;
          // Same switch case as before
          switch (index) {
            case 0: iconData = CupertinoIcons.home; label = 'Home'; break;
            case 1: iconData = CupertinoIcons.heart; label = 'Wishlist'; break;
            case 2: iconData = CupertinoIcons.cart; label = 'Cart'; break;
            case 3: iconData = CupertinoIcons.profile_circled; label = 'Profile'; break;
            default: iconData = CupertinoIcons.home; label = 'Home';
          }
          return Expanded(
            child: Material(
              color: Colors.transparent,
              child: InkWell(
                onTap: () => provider.setCurrentIndex(index),
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Icon(iconData, size: 20, color: provider.currentIndex == index ? const Color.fromARGB(255, 249, 247, 247) : Colors.grey[400]),
                    Text(label, style: TextStyle(fontSize: 12, color: provider.currentIndex == index ? const Color.fromARGB(255, 238, 236, 236) : Colors.grey[400]))
                  ],
                ),
              ),
            ),
          );
        }),
      ),
    );
  }
}
