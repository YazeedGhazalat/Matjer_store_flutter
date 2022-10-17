import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:matjer/components/constans.dart';
import 'package:matjer/widgets/home/home_body.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kPrimaryColor,
      appBar: homeAppbar(),
      body: HomeBody(),
    );
  }

  AppBar homeAppbar() {
    return AppBar(
      backgroundColor: kPrimaryColor,
      elevation: 0,
      title: Text(
        "Welcome to electronically store",
        style: GoogleFonts.getFont("Roboto",
            fontWeight: FontWeight.bold, fontSize: 20),
      ),
      centerTitle: false,
      actions: [IconButton(onPressed: (() {}), icon: Icon(Icons.menu))],
    );
  }
}
