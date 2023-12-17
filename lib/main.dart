import 'package:flutter/material.dart';
import 'package:plantapp/pages/plates_page.dart';
import 'models/food_card_model.dart';
import 'pages/dessert_page.dart';
import 'pages/home_bage.dart';
import 'pages/recipe_page.dart';

void main() {
  runApp(const FoodApp());
}

class FoodApp extends StatelessWidget {
  const FoodApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      routes: {
        HomePage.id: (context) => const HomePage(),
        DessertPage.id: (context) => const DessertPage(),
        PlatesPage.id: (context) => const PlatesPage(),
        RecipePage.id:(context) =>const RecipePage(),
      },
      debugShowCheckedModeBanner: false,
      home: const  HomePage(),
    );
  }
}
