import 'package:flutter/material.dart';
import 'package:matjer/components/constans.dart';

class HomeBody extends StatelessWidget {
  const HomeBody({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
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
                  itemCount: 4,
                  itemBuilder: (BuildContext context, int index) {
                    return productCard();
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

class productCard extends StatelessWidget {
  const productCard({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      margin: EdgeInsets.symmetric(
        horizontal: kDefaultPadding,
        vertical: kDefaultPadding / 2,
      ),
      height: 190,
      child: Stack(
        alignment: Alignment.bottomCenter,
        children: [
          Container(
            height: 166,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(22),
              color: Colors.white,
              boxShadow: [
                BoxShadow(
                  offset: Offset(0, 15),
                  blurRadius: 25,
                  color: Colors.black26,
                )
              ],
            ),
          ),
          Positioned(
            top: 0,
            left: 0,
            child: Container(
              padding: EdgeInsets.symmetric(
                horizontal: kDefaultPadding,
              ),
              height: 160,
              width: 200,
              child: Image.asset(
                "images/airpod.png",
                fit: BoxFit.cover,
              ),
            ),
          ),
          Positioned(
            bottom: 0,
            right: 0,
            child: SizedBox(
              height: 136,
              width: size.width - 200,
              child: Column(
                // mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Spacer(),
                  Padding(
                    padding: const EdgeInsets.symmetric(
                      horizontal: kDefaultPadding,
                    ),
                    child: Text(
                      "AirPod",
                      style: Theme.of(context).textTheme.bodyText1,
                    ),
                  ),
                  Spacer(),
                  Padding(
                    padding: const EdgeInsets.symmetric(
                      horizontal: kDefaultPadding,
                    ),
                    child: Text(
                      "6 hours of listening time ",
                      style: Theme.of(context).textTheme.caption,
                    ),
                  ),
                  Spacer(),
                  Padding(
                    padding: const EdgeInsets.all(kDefaultPadding),
                    child: Container(
                      padding: const EdgeInsets.symmetric(
                        horizontal: kDefaultPadding * 1.5,
                        vertical: kDefaultPadding / 5,
                      ),
                      decoration: BoxDecoration(
                        color: kSecondaryColor,
                        borderRadius: BorderRadius.circular(22),
                      ),
                      child: Text("Price: 99\$"),
                    ),
                  )
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
