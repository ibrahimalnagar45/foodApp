import 'package:flutter/material.dart';
import 'package:plantapp/widgets/recipe_container.dart';

import '../models/food_card_model.dart';

class PlatsListView extends StatelessWidget {
  const PlatsListView({super.key});

  final List<FoodCardModel> offlinefoods = const [
    FoodCardModel(
      image: "assets/images/3d823aac-b35b-4acb-b4fb-302a8d4e54a5.jpeg",
      name: "Taco",
      countryName: "Mexico",
    ),
    FoodCardModel(
      image: "assets/images/5d6b4380-bb54-4e50-bba4-0f9fd53e2146.jpeg",
      name: "Fajita",
      countryName: "Mexico",
    ),
    FoodCardModel(
      image: "assets/images/5e23efe9-0b71-4eee-9139-c3db4cb81b5c.jpeg",
      name: "Curry",
      countryName: "India",
    ),
    FoodCardModel(
      image: "assets/images/86920feb-31dd-48ff-b745-4b36e8468f89.jpeg",
      name: "Hamburg",
      countryName: "Germany",
    ),
  ];
  final List<FoodCardModel> allFoods = const [
    FoodCardModel(
      image: "assets/images/426d512e-e55b-4892-b4e0-d229bc39aa43.jpeg",
      name: "Penne",
      countryName: "Italy",
    ),
    FoodCardModel(
      image: "assets/images/39179277-b380-49b3-8a4c-b76c1a7373eb.jpeg",
      name: "Pasta",
      countryName: "Italy",
    ),
    FoodCardModel(
      image: "assets/images/150b947b-457e-4fd6-9f32-abac1dc796cf.jpeg",
      name: "Kabsa",
      countryName: "Saudi Arabia",
    ),
    FoodCardModel(
      image: "assets/images/7af2ce31-2bce-41a2-b752-271a486fc5e8.jpeg",
      name: "Mandi",
      countryName: "Yemen",
    ),
    FoodCardModel(
      image: "assets/images/48e6aeb4-c36d-4d5d-989c-a344dea32a41.jpeg",
      name: "Shawarma",
      countryName: "Turkey",
    ),
    FoodCardModel(
      image: "assets/images/a41f37d7-1a72-472b-9e0e-9f279e304db8.jpeg",
      name: "Pizza",
      countryName: "Italy",
    ),
    FoodCardModel(
      image: "assets/images/f310953b-f72c-4f5f-a4e1-b69a0ddb99eb.jpeg",
      name: "Samosa",
      countryName: "Wordly",
    ),
    FoodCardModel(
      image: "assets/images/0a498dce-5ca4-4a94-8fff-c584fb660402.jpeg",
      name: "Mulukhiyah",
      countryName: "Egypt",
    ),
    FoodCardModel(
      image: "assets/images/1f0a244a-4d24-4855-a17d-b632a41cffcf.jpeg",
      name: "Carbonara",
      countryName: "Italy",
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return SliverList(
      delegate: SliverChildBuilderDelegate((context, int) {
        return RecipeCard(food: allFoods[int]);
      }, childCount: allFoods.length),
    );
  }
}
