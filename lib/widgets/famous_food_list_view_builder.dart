import 'package:flutter/material.dart';
import 'package:plantapp/models/food_card_model.dart';
import 'package:plantapp/widgets/food_card.dart';

class FamousFoodListView extends StatelessWidget {
  const FamousFoodListView({
    super.key,
  });
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

  final List<FoodCardModel> offLineDesserts = const [
    FoodCardModel(
      image: "assets/images/32a3f93e-5f4f-41e0-898a-8b26359f65e2.jpeg",
      name: "Black Forest Cake",
      countryName: "Germany",
    ),
    FoodCardModel(
      image: "assets/images/b1e87493-abb6-4326-a513-17a17b433448.jpeg",
      name: "Cheesecake",
      countryName: "South Africa",
    ),
    FoodCardModel(
      image: "assets/images/bd6a3e95-1516-497d-bfad-26e568ded36b.jpeg",
      name: "Balah el sham",
      countryName: "Turkey",
    ),
    FoodCardModel(
      image: "assets/images/c2d904e6-2a0b-449a-bcb8-d36c0e76195a.jpeg",
      name: "Donuts",
      countryName: " England",
    ),
    FoodCardModel(
      image: "assets/images/e80e9b0e-776d-41fd-932d-0a3e706c6ff5.jpeg",
      name: "Cookies ",
      countryName: "American",
    ),
    FoodCardModel(
      image: "assets/images/f414317a-51e2-4cf5-9a5a-788ea2a2b06c.jpeg",
      name: "Cigar Knafeh",
      countryName: "Middle East",
    ),
    FoodCardModel(
      image: "assets/images/e0c42d72-905d-4684-b14c-3da1e35b8adb.jpeg",
      name: "Knafeh",
      countryName: "Middle East",
    ),
    FoodCardModel(
      image: "assets/images/fc64330c-fe25-480e-974e-8f107e639365.jpeg",
      name: "Om Ali",
      countryName: "Egypt",
    ),
    FoodCardModel(
      image: "assets/images/7a5ac07d-4ad4-4f58-8b55-81656e64b85a.jpeg",
      name: "Tiramisu ",
      countryName: "Italian ",
    ),
    FoodCardModel(
      image: "assets/images/8a8efee9-f357-4780-b23e-aeb3487209db.jpeg",
      name: "Zalabiyeh",
      countryName: "Egypt",
    ),
  ];
  final List<FoodCardModel> famousfood = const [
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
      delegate: SliverChildBuilderDelegate(
        (context, index) => SizedBox(
          height: 250,
          width: 320,
          child: ListView.builder(
            itemCount: famousfood.length,
            itemBuilder: (context, index) {
              return FoodCard(food: famousfood[index]);
            },
            scrollDirection: Axis.horizontal,
          ),
        ),
        childCount: 1,
      ),
    );
  }
}
