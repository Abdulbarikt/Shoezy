import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'app/controller/navbar.dart';
import 'app/view/splash/splash_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => NavigationProvider(),
      child: MaterialApp(
        theme: ThemeData(fontFamily: 'DM Sans'),
        debugShowCheckedModeBanner: false,
        title: 'Shoezy',
        home: SplashScreen(),
      ),
    );
  }
}
