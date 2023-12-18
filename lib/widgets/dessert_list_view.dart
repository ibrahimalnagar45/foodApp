import 'package:flutter/material.dart';
import 'package:plantapp/widgets/recipe_container.dart';

import '../models/food_card_model.dart';

class DessertListView extends StatelessWidget {
  const DessertListView({super.key});

  final List<FoodCardModel> offLineDesserts = const [
    FoodCardModel(
      info:
          "delightful German dessert that combines rich chocolate and luscious cherries",
      image: "assets/images/32a3f93e-5f4f-41e0-898a-8b26359f65e2.jpeg",
      name: "Black Forest Cake",
      countryName: "Germany",
    ),
    FoodCardModel(
      info:
          "delightful fusion of creamy cheese, eggs, and sweetness, with endless possibilities for flavor and presentation",
      image: "assets/images/b1e87493-abb6-4326-a513-17a17b433448.jpeg",
      name: "Cheesecake",
      countryName: "South Africa",
    ),
    FoodCardModel(
      info:
          "delightful fried choux pastry that hails from Egypt and other Middle Eastern regions",
      image: "assets/images/bd6a3e95-1516-497d-bfad-26e568ded36b.jpeg",
      name: "Balah el sham",
      countryName: "Turkey",
    ),
    FoodCardModel(
      info:
          "delightful treat made from leavened fried dough. It’s popular in many countries and comes in various forms as a sweet snack",
      image: "assets/images/c2d904e6-2a0b-449a-bcb8-d36c0e76195a.jpeg",
      name: "Donuts",
      countryName: " England",
    ),
    FoodCardModel(
      info:
          "Whether you’re craving classic chocolate chip cookies, festive holiday treats, or unique flavor combinations, there’s a cookie for every occasion",
      image: "assets/images/e80e9b0e-776d-41fd-932d-0a3e706c6ff5.jpeg",
      name: "Cookies ",
      countryName: "American",
    ),
    // FoodCardModel(
    //   info: "",
    //   image: "assets/images/f414317a-51e2-4cf5-9a5a-788ea2a2b06c.jpeg",
    //   name: " Knafeh Cigar",
    //   countryName: "Middle East",
    // ),
    FoodCardModel(
      info:
          "traditional Middle Eastern dessert that delights taste buds with its sweet and savory combination.",
      image: "assets/images/e0c42d72-905d-4684-b14c-3da1e35b8adb.jpeg",
      name: "Knafeh",
      countryName: "Middle East",
    ),
    FoodCardModel(
      info:
          "traditional Egyptian dessert that warms hearts and satisfies sweet cravings",
      image: "assets/images/fc64330c-fe25-480e-974e-8f107e639365.jpeg",
      name: "Om Ali",
      countryName: "Egypt",
    ),
    FoodCardModel(
      info:
          "classic Italian dessert that combines rich flavors and delightful textures",
      image: "assets/images/7a5ac07d-4ad4-4f58-8b55-81656e64b85a.jpeg",
      name: "Tiramisu ",
      countryName: "Italian ",
    ),
    FoodCardModel(
      info:
          "delightful Middle Eastern dessert that combines crispy and fluffy textures.",
      image: "assets/images/8a8efee9-f357-4780-b23e-aeb3487209db.jpeg",
      name: "Zalabiyeh",
      countryName: "Egypt",
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return SliverList(
      delegate: SliverChildBuilderDelegate((context, int) {
        return RecipeCard(food: offLineDesserts[int]);
      }, childCount: offLineDesserts.length),
    );
  }
}
