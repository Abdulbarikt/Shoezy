import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../../controller/wishlistcounter.dart';

class CartCard extends StatelessWidget {
  const CartCard({super.key, required CounterModel counter});

  @override
  Widget build(BuildContext context) {
    var counter = Provider.of<CounterModel>(context);

    return ListView.separated(
      itemCount: 3,
      separatorBuilder: (context, index) => SizedBox(height: 20),
      itemBuilder: (context, index) {
        return Container(
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(23),
          ),
          height: 110,
          width: double.infinity,
          child: Center(
            child: ListTile(
              leading: Container(
                height: 85,
                width: 85,
                child: Image.asset('assets/images/shoe5.png'),
              ),
              title: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisSize: MainAxisSize.min,
                children: <Widget>[
                  Text('Nike Club Max', style: TextStyle(fontWeight: FontWeight.bold)),
                  Text('64.95'),
                  SizedBox(height: 10),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      CircleAvatar(
                        backgroundColor: Color.fromARGB(255, 160, 155, 155),
                        maxRadius: 12,
                        child: IconButton(
                          icon: Icon(Icons.remove, color: Colors.white),
                          onPressed: () => counter.decrement(index),
                          padding: EdgeInsets.zero,
                          iconSize: 18,
                        ),
                      ),
                      Text('${counter.getCount(index)}', style: TextStyle(fontSize: 15)),
                      CircleAvatar(
                        backgroundColor: Colors.blue,
                        maxRadius: 12,
                        child: IconButton(
                          icon: Icon(Icons.add, color: Colors.white),
                          onPressed: () => counter.increment(index),
                          padding: EdgeInsets.zero,
                          iconSize: 18,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
              trailing: IconButton(
                icon: Icon(CupertinoIcons.delete),
                onPressed: () {},
              ),
            ),
          ),
        );
      },
    );
  }
}
