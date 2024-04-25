import 'package:flutter/material.dart';

class CurvedLinePainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    final paint = Paint()
      ..color = Colors.white
      ..style = PaintingStyle.fill;

    final path = Path();
    path.moveTo(size.width, 0);
    path.quadraticBezierTo(size.width * 0.8, size.height * 1, 0,
        size.height); // End point at the bottom left

    // Extend the path to cover the bottom left corner, bottom right, and close it
    path.lineTo(size.width, size.height); // Line to bottom right
    path.lineTo(size.width, 0); // Line back to top right
    path.close(); // Close the path for filling

    canvas.drawPath(path, paint);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) => false;
}
