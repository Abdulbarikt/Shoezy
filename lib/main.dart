import 'package:flutter/material.dart';

import 'view/splash/splash_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return  MaterialApp(
      theme: ThemeData(fontFamily: 'DM Sans'),
      debugShowCheckedModeBanner: false,
      title: 'Shoezy',
      home: SplashScreen(),
    );
  }
}