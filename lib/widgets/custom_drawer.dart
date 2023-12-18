import 'package:flutter/material.dart';
import 'package:plantapp/pages/dessert_page.dart';
import 'package:plantapp/pages/home_bage.dart';
import 'package:plantapp/pages/plates_page.dart';
import 'package:plantapp/constants.dart';

class CustomDrawer extends StatelessWidget {
  const CustomDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      backgroundColor:
          const Color(0xffF5AAA0), // Color.fromARGB(255, 237, 135, 119),
      width: 200,
      child: Column(
        children: [
          DrawerHeader(
            margin: const EdgeInsets.only(bottom: 0),
            child: Stack(children: [
              Positioned(
                left: 0,
                bottom: 90,
                right: 0,
                child: Container(
                  height: 12,
                  width: 12,
                  decoration: BoxDecoration(boxShadow: [
                    BoxShadow(
                        offset: const Offset(0, 12),
                        color: Colors.black.withOpacity(.4),
                        blurRadius: 15)
                  ]),
                ),
              ),
              const Text(
                "Foodies",
                style: TextStyle(
                  fontFamily: "Satisfy",
                  fontSize: 50,
                ),
              ),
            ]),
          ),
          const ListTile(
            title: Text(
              "categories :",
              style: TextStyle(fontSize: 30),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: kPrimarypadding),
            child: ListTile(
              title: Text(
                "Home",
                style: TextStyle(
                  fontSize: 15,
                  color: Colors.black.withOpacity(.8),
                ),
              ),
              onTap: () => Navigator.pushNamed(context, HomePage.id),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: kPrimarypadding),
            child: ListTile(
              title: Text(
                "Desserts",
                style: TextStyle(
                  fontSize: 15,
                  color: Colors.black.withOpacity(.8),
                ),
              ),
              onTap: () => Navigator.pushNamed(context, DessertPage.id),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: kPrimarypadding),
            child: ListTile(
              title: Text(
                "Famous Plates",
                style: TextStyle(
                  fontSize: 15,
                  color: Colors.black.withOpacity(.8),
                ),
              ),
              onTap: () => Navigator.pushNamed(context, PlatesPage.id),
            ),
          ),
        ],
      ),
    );
  }
}
