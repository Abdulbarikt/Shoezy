import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class GoogleButton extends StatelessWidget {
  final VoidCallback onTap;
  final String title;
  final String icon;
  final Color color;
  const GoogleButton(
      {super.key,
      required this.onTap,
      required this.title,
      required this.icon,
      required this.color});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Container(
        height: 46,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(30), color: color),
        child: Row(
          children: [
            const SizedBox(width: 20),
            SvgPicture.asset(
              icon,
              height: 24,
              width: 24,
            ),
            const SizedBox(width: 30),
            Text(title,
                style: const TextStyle(
                    fontSize: 18,
                    color: Colors.black,
                    fontWeight: FontWeight.bold))
          ],
        ),
      ),
    );
  }
}
