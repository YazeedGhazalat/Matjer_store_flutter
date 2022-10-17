import 'package:flutter/material.dart';
import 'package:matjer/components/constans.dart';

class ProductImage extends StatelessWidget {
  const ProductImage({
    Key? key,
    required this.size,
    required this.image,
    required this.Tag,
  }) : super(key: key);

  final Size size;
  final String image;
  final String Tag;
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(
        vertical: kDefaultPadding,
      ),
      height: size.width * 0.8,
      child: Stack(
        alignment: Alignment.bottomCenter,
        children: [
          Container(
            height: size.width * 0.7,
            width: size.width * 0.7,
            decoration: BoxDecoration(
              color: Colors.white,
              shape: BoxShape.circle,
            ),
          ),
          Hero(
              tag: "$Tag",
              child: Image.asset(
                image,
                height: size.width * 0.75,
                width: size.width * 0.75,
                fit: BoxFit.cover,
              ))
        ],
      ),
    );
  }
}
