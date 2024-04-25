import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:shoezy_app/app/controller/size.dart';
import 'package:shoezy_app/app/controller/wishlist_heart.dart';
import 'package:shoezy_app/app/utils/colors.dart';
import 'package:shoezy_app/app/view/home/Cart/cart.dart';
import 'package:shoezy_app/app/view/widgets/cartbutton.dart';

class DetailPage extends StatelessWidget {
  const DetailPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.kBackground,
      appBar: AppBar(
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
                    'Men’s Shoes',
                    style: TextStyle(color: Colors.white, fontSize: 19),
                  ),
                ),
              ),
              Consumer<WishlistState>(
                builder: (context, wishlist, child) => IconButton(
                  icon: CircleAvatar(
                    backgroundColor: AppColors.kBackground,
                    child: Icon(
                      wishlist.isFavorited
                          ? Icons.favorite
                          : Icons.favorite_border,
                      color: wishlist.isFavorited ? Colors.red : Colors.grey,
                    ),
                  ),
                  onPressed: () {
                    wishlist.toggleFavorite();
                  },
                ),
              ),
              IconButton(
                icon: CircleAvatar(
                  backgroundColor: Colors.white,
                  child: Icon(
                    Icons.shopping_cart,
                    color: Colors.black,
                    size: 18,
                  ),
                ),
                onPressed: () {},
              ),
              SizedBox(width: 16),
            ],
          ),
        ),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Center(
            child: Container(
              height: 200,
              width: 200,
              decoration: BoxDecoration(
                  image: DecorationImage(
                      image: AssetImage('assets/images/shoe2.png'))),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(18.0),
            child:
                Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
              Text(
                'BEST SELLER',
                style: TextStyle(color: Colors.blue, fontSize: 14),
              ),
              Text(
                'Nike Air Jordan',
                style: TextStyle(color: Colors.white, fontSize: 24),
              ),
              Text(
                '967.800',
                style: TextStyle(color: Colors.white, fontSize: 20),
              ),
              Text(
                'Air Jordan is an American brand of basketball\nshoes athletic, casual, and style clothing \nproduced by Nike....',
                style: TextStyle(color: Colors.white, fontSize: 14),
              ),
              SizedBox(
                height: 10,
              ),
              Text(
                'Color',
                style: TextStyle(color: Colors.white, fontSize: 18),
              ),
              SizedBox(
                height: 10,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: List.generate(
                  3,
                  (index) => Padding(
                    padding: EdgeInsets.only(right: index < 2 ? 20.0 : 0),
                    child: CircleAvatar(
                      radius: 25,
                      backgroundColor: _getAvatarColor(index),
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: 15,
              ),
              Text(
                'Size',
                style: TextStyle(color: Colors.white, fontSize: 18),
              ),
              SizedBox(
                height: 15,
              ),
              Consumer<AvatarState>(
                builder: (context, state, child) => Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: List.generate(5, (index) {
                    return GestureDetector(
                      onTap: () => state.selectAvatar(index),
                      child: CircleAvatar(
                        radius: 25,
                        backgroundColor: state.selectedAvatarIndex == index
                            ? Colors.blue
                            : Colors.white,
                        child: Text(
                          '${index + 6}',
                          style: TextStyle(
                            color: Colors.black,
                            fontWeight: FontWeight.bold,
                            fontSize: 17,
                          ),
                        ),
                      ),
                    );
                  }),
                ),
              ),
              SizedBox(
                height: 30,
              ),
              Container(
                height: 90,
                width: 370,
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(23),
                        topRight: Radius.circular(23))),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          'Price',
                          style: TextStyle(
                              fontSize: 16,
                              color: const Color.fromARGB(255, 73, 72, 70)),
                        ),
                        Text(
                          '849.69',
                          style: TextStyle(
                              fontSize: 20,
                              color: Colors.black,
                              fontWeight: FontWeight.bold),
                        ),
                      ],
                    ),
                    CartButton(
                        onTap: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => CartPage()));
                        },
                        text: 'Add to Cart')
                  ],
                ),
              )
            ]),
          ),
        ],
      ),
    );
  }
}

Color _getAvatarColor(int index) {
  List<Color> colors = [Colors.red, Colors.green, Colors.blue];
  return colors[index];
}
