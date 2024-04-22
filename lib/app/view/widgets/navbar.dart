import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:shoezy_app/app/utils/colors.dart';

class CustomBottomNavigationBar extends StatelessWidget {
  final int currentIndex;
  final Function(int) onTap;

  const CustomBottomNavigationBar({
    super.key,
    required this.currentIndex,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return BottomAppBar(
      color: AppColors.kBackground,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: List.generate(4, (index) {
          IconData iconData;
          String label;
          switch (index) {
            case 0:
              iconData = CupertinoIcons.home;
              label = 'Home';
              break;
            case 1:
              iconData = CupertinoIcons.heart;
              label = 'Wishlist';
              break;
            case 2:
              iconData = CupertinoIcons.cart;
              label = 'Cart';
              break;
            case 3:
              iconData = CupertinoIcons.profile_circled;
              label = 'Profile';
              break;
            default:
              iconData = CupertinoIcons.home;
              label = 'Home';
          }
          return Expanded(
            child: Material(
              color: Colors.transparent,
              child: InkWell(
                onTap: () => onTap(index),
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Icon(iconData,
                        size: 20,
                        color: currentIndex == index
                            ? Colors.black
                            : Colors.grey[400]),
                    Text(label,
                        style: TextStyle(
                            fontSize: 12,
                            color: currentIndex == index
                                ? Colors.black
                                : Colors.grey[400]))
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
