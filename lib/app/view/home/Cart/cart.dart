import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:shoezy_app/app/controller/wishlistcounter.dart';
import 'package:shoezy_app/app/utils/colors.dart';
import 'package:shoezy_app/app/view/widgets/cartcard.dart';

class CartPage extends StatelessWidget {
  const CartPage({super.key});

  @override
  Widget build(BuildContext context) {
    var counter = Provider.of<CounterModel>(context);

    return Scaffold(
      backgroundColor: AppColors.kBackground,
      appBar: AppBar(
        toolbarHeight: 90,
        automaticallyImplyLeading: false,
        backgroundColor: AppColors.kBackground,
        elevation: 0,
        flexibleSpace: SafeArea(
          child: Row(
            children: [
              SizedBox(width: 16),
              IconButton(
                icon: CircleAvatar(
                  backgroundColor: Colors.white,
                  child: Icon(Icons.arrow_back, color: Colors.black),
                ),
                onPressed: () {
                  Navigator.of(context).pop();
                },
              ),
              Expanded(
                child: Center(
                  child: Text(
                    'Cart',
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 20,
                        fontWeight: FontWeight.bold),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(15),
        child: CartCard(counter: counter),
      ),
    );
  }
}
