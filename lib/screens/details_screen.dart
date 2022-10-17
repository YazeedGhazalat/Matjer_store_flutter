import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:matjer/components/constans.dart';
import 'package:matjer/models/product.dart';
import 'package:matjer/widgets/details/details_body.dart';

class DetailsScreen extends StatelessWidget {
  const DetailsScreen({super.key, this.product});
  static const String screenRoute = "DetailsSceen";
  final Product? product;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kPrimaryColor,
      appBar: DetailsAppbar(context),
      body: DetailsBody(product: product),
    );
  }

  AppBar DetailsAppbar(BuildContext context) {
    return AppBar(
      elevation: 0,
      backgroundColor: kBackgroundColor,
      leading: IconButton(
        padding: EdgeInsets.only(
          right: kDefaultPadding,
        ),
        icon: Icon(
          Icons.arrow_back,
          color: kPrimaryColor,
        ),
        onPressed: (() {
          Navigator.pop(context);
        }),
      ),
      title: Text(
        "Back",
        style: Theme.of(context).textTheme.bodyText2,
      ),
    );
  }
}
