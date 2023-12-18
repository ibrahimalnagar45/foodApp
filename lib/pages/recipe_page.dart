import 'package:flutter/material.dart';
import 'package:plantapp/models/food_card_model.dart';
import 'package:plantapp/widgets/custom_drawer.dart';

import '../constants.dart';

class RecipePage extends StatelessWidget {
  const RecipePage({super.key, this.food});
  static String id = 'RecipePage';
  final FoodCardModel? food;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      
      // appBar: AppBar(
      //   backgroundColor: Colors.transparent,
      //   elevation: 0,
      //   iconTheme: const IconThemeData(
      //     color: Colors.black,
      //   ),
      //   title: const CusotmAppBar(),
      // ),
      drawer: const CustomDrawer(),
      body: ListView(children: [
        Stack(
          children: [
            Container(
              height: 320,
              width: double.infinity,
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage(food!.image),
                  fit: BoxFit.cover,
                ),
              ),
            ),
            Positioned(
              top: 300,
              bottom: 0,
              left: 0,
              right: 0,
              child: Container(
                width: double.infinity,
                decoration: const BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(kPrimarypadding),
                      topRight: Radius.circular(kPrimarypadding)),
                ),
                child: Center(
                  child: Text(
                    "-",
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      color: Colors.black.withOpacity(.5),
                      fontSize: 30,
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
        Container(
          margin: const EdgeInsets.symmetric(horizontal: kPrimarypadding / 2),
          width: double.infinity,
          decoration: const BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.only(
                topLeft: Radius.circular(kPrimarypadding),
                topRight: Radius.circular(kPrimarypadding)),
          ),
          child: Text(
            food!.name,
            style: TextStyle(
              color: Colors.black.withAlpha(
                200,
              ),
              fontSize: 30,
            ),
          ),
        ),
        Container(
          color: Colors.white,
          child: Padding(
            padding: const EdgeInsets.only(
                left: kPrimarypadding / 2, top: kPrimarypadding / 2),
            child: Text(
              food!.info,
              style: const TextStyle(
                color: Colors.black87,
              ),
            ),
          ),
        ),
        Container(
          color: Colors.white,
          child: const Padding(
            padding: EdgeInsets.only(
                left: kPrimarypadding / 2,
                top: kPrimarypadding,
                bottom: kPrimarypadding / 2),
            child: Text(
              "Steps:",
              style: TextStyle(color: Colors.black, fontSize: 30),
            ),
          ),
        ),
        Container(
          color: Colors.white,
          child: Padding(
            padding: const EdgeInsets.only(left: kPrimarypadding / 2, top: 3.0),
            child: Text(
              food!.steps,
              style: const TextStyle(color: Colors.black87, fontSize: 15),
            ),
          ),
        ),
      ]),
    );
  }
}
