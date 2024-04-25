import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:shoezy_app/app/utils/colors.dart';
import 'package:shoezy_app/app/view/widgets/auth_field.dart';
import 'package:shoezy_app/app/view/widgets/newarrival_card.dart';

import '../../widgets/popularshoe_card.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  final TextEditingController searchController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.kBackground,
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(18.0),
          child: Form(
            key: _formKey,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'HI, ALEX',
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 24,
                      fontWeight: FontWeight.bold),
                ),
                Text(
                  'What Would you like to learn Today?\n Search Below.',
                  style: TextStyle(color: Colors.white, fontSize: 13),
                ),
                SizedBox(
                  height: 20,
                ),
                CustomTextField(
                  controller: searchController,
                  hintText: 'Search for....',
                  prefixIcon: CupertinoIcons.search,
                ),
                SizedBox(
                  height: 15,
                ),
                Text(
                  'Popular Shoes',
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 18,
                      fontWeight: FontWeight.bold),
                ),
                SizedBox(
                  height: 15,
                ),
                PopularShoeCard(),
                SizedBox(
                  height: 10,
                ),
                Text(
                  'New Arrivals',
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 18,
                      fontWeight: FontWeight.bold),
                ),
                SizedBox(
                  height: 10,
                ),
                NewArrivalCard(),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
