import 'package:flutter/material.dart';
import 'package:matjer/components/constans.dart';
import 'package:matjer/models/product.dart';
import 'package:matjer/screens/details_screen.dart';
import 'package:matjer/widgets/home/product_cart.dart';

class HomeBody extends StatelessWidget {
  const HomeBody({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      bottom: false,
      child: Column(
        children: [
          SizedBox(
            height: kDefaultPadding / 2,
          ),
          Expanded(
            child: Stack(
              children: [
                Container(
                  margin: EdgeInsets.only(top: 70),
                  decoration: BoxDecoration(
                    color: kBackgroundColor,
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(40),
                      topRight: Radius.circular(40),
                    ),
                  ),
                ),
                ListView.builder(
                  itemCount: products.length,
                  itemBuilder: (BuildContext context, int index) {
                    return productCard(
                      press: () {
                        Navigator.push(context,
                            MaterialPageRoute(builder: ((context) {
                          return DetailsScreen(
                            product: products[index],
                          );
                        })));
                      },
                      itemIndex: index,
                      product: products[index],
                    );
                  },
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
