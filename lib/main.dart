import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:shoezy_app/app/controller/size.dart';
import 'package:shoezy_app/app/controller/wishlist_heart.dart';
import 'package:shoezy_app/app/controller/wishlistcounter.dart';
import 'app/controller/navbar.dart';
import 'app/view/splash/splash_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (context) => PageIndexProvider()),
        ChangeNotifierProvider(create: (context) => AvatarState()),
        ChangeNotifierProvider(create: (context) => WishlistState()),
        ChangeNotifierProvider(create: (context) => CounterModel()),
      ],
      child: MaterialApp(
        theme: ThemeData(fontFamily: 'DM Sans'),
        debugShowCheckedModeBanner: false,
        title: 'Shoezy',
        home: SplashScreen(),
      ),
    );
  }
}
