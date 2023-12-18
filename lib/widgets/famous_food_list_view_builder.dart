import 'package:flutter/material.dart';
import 'package:plantapp/models/food_card_model.dart';
import 'package:plantapp/widgets/food_card.dart';

class FamousFoodListView extends StatelessWidget {
  const FamousFoodListView({
    super.key,
  });

  final List<FoodCardModel> allFoods = const [
    // FoodCardModel( info: "",
    //   image: "assets/images/426d512e-e55b-4892-b4e0-d229bc39aa43.jpeg",
    //   name: "Penne",
    //   countryName: "Italy",
    // ),
    FoodCardModel(
      info:
          " delightful culinary creation that has captured hearts and taste buds across the globe. ",
      image: "assets/images/39179277-b380-49b3-8a4c-b76c1a7373eb.jpeg",
      name: "Pasta",
      countryName: "Italy",
    ),
    FoodCardModel(
      info:
          "traditional and popular dish in Middle Eastern cuisine, particularly in Saudi Arabian and Gulf countries. It is a flavorful and aromatic rice dish that is often considered a national dish in Saudi Arabia.",
      image: "assets/images/150b947b-457e-4fd6-9f32-abac1dc796cf.jpeg",
      name: "Kabsa",
      countryName: "Saudi Arabia",
    ),
    FoodCardModel(
      info:
          " traditional dish that originated from Hadhramaut, Yemen. It’s a flavorful combination of basmati or Indian rice, slow-cooked meat, and aromatic spices.",
      image: "assets/images/7af2ce31-2bce-41a2-b752-271a486fc5e8.jpeg",
      name: "Mandi",
      countryName: "Yemen",
    ),
    FoodCardModel(
      info:
          " Middle Eastern dish that originated in the Levant region during the Ottoman Empire. It’s a delightful combination of flavors and textures",
      image: "assets/images/48e6aeb4-c36d-4d5d-989c-a344dea32a41.jpeg",
      name: "Shawarma",
      countryName: "Turkey",
    ),
    FoodCardModel(
      info: "dish of Italian origin that has become a global favorite.",
      image: "assets/images/a41f37d7-1a72-472b-9e0e-9f279e304db8.jpeg",
      name: "Pizza",
      countryName: "Italy",
    ),
    FoodCardModel(
      info:
          "fried South Asian pastry with a savory filling. It’s a popular street food in India, Pakistan, Bangladesh, and Sri Lanka, as well as among their South Asian diasporas. ",
      image: "assets/images/f310953b-f72c-4f5f-a4e1-b69a0ddb99eb.jpeg",
      name: "Samosa",
      countryName: "Wordly",
    ),
    FoodCardModel(
      info:
          " dish made from the leaves of Corchorus olitorius, commonly known in English as jute mallow.",
      image: "assets/images/0a498dce-5ca4-4a94-8fff-c584fb660402.jpeg",
      name: "Mulukhiyah",
      countryName: "Egypt",
    ),
    FoodCardModel(
      info:
          " classic Italian pasta dish that combines simple ingredients to create a rich and indulgent flavor",
      image: "assets/images/1f0a244a-4d24-4855-a17d-b632a41cffcf.jpeg",
      name: "Carbonara",
      countryName: "Italy",
    ),
  ];

  final List<FoodCardModel> famousfood = const [
    // FoodCardModel(

    //   info: "",
    //   image: "assets/images/426d512e-e55b-4892-b4e0-d229bc39aa43.jpeg",
    //   name: "Penne",
    //   countryName: "Italy",
    // ),
    FoodCardModel(
      info:
          "delightful culinary creation that has captured hearts and taste buds across the globe. ",
      image: "assets/images/39179277-b380-49b3-8a4c-b76c1a7373eb.jpeg",
      name: "Pasta",
      countryName: "Italy",
    ),
    FoodCardModel(
      info:
          "traditional Mexican dish that brings joy to taste buds around the world",
      image: "assets/images/3d823aac-b35b-4acb-b4fb-302a8d4e54a5.jpeg",
      name: "Taco",
      countryName: "Mexico",
    ),
    FoodCardModel(
      info:
          "sizzling symphony of flavors, brings the spirit of Tex-Mex cuisine to your plate.",
      image: "assets/images/5d6b4380-bb54-4e50-bba4-0f9fd53e2146.jpeg",
      name: "Fajita",
      countryName: "Mexico",
    ),
    FoodCardModel(
      info:
          "symphony of spices, dances across continents, tantalizing taste buds and weaving stories of culinary heritage. ",
      image: "assets/images/5e23efe9-0b71-4eee-9139-c3db4cb81b5c.jpeg",
      name: "Curry",
      countryName: "India",
    ),
    FoodCardModel(
      info:
          "a delightful creation that has become a global icon of American culture.",
      image: "assets/images/86920feb-31dd-48ff-b745-4b36e8468f89.jpeg",
      name: "Hamburg",
      countryName: "Germany",
    ),
    FoodCardModel(
      info:
          "traditional and popular dish in Middle Eastern cuisine, particularly in Saudi Arabian and Gulf countries. It is a flavorful and aromatic rice dish that is often considered a national dish in Saudi Arabia.",
      image: "assets/images/150b947b-457e-4fd6-9f32-abac1dc796cf.jpeg",
      name: "Kabsa",
      countryName: "Saudi Arabia",
    ),
    FoodCardModel(
      info:
          " traditional dish that originated from Hadhramaut, Yemen. It’s a flavorful combination of basmati or Indian rice, slow-cooked meat, and aromatic spices.",
      image: "assets/images/7af2ce31-2bce-41a2-b752-271a486fc5e8.jpeg",
      name: "Mandi",
      countryName: "Yemen",
    ),
    FoodCardModel(
      info:
          " Middle Eastern dish that originated in the Levant region during the Ottoman Empire. It’s a delightful combination of flavors and textures",
      image: "assets/images/48e6aeb4-c36d-4d5d-989c-a344dea32a41.jpeg",
      name: "Shawarma",
      countryName: "Turkey",
    ),
    FoodCardModel(
      info: "dish of Italian origin that has become a global favorite.",
      image: "assets/images/a41f37d7-1a72-472b-9e0e-9f279e304db8.jpeg",
      name: "Pizza",
      countryName: "Italy",
    ),
    FoodCardModel(
      info:
          "fried South Asian pastry with a savory filling. It’s a popular street food in India, Pakistan, Bangladesh, and Sri Lanka, as well as among their South Asian diasporas. ",
      image: "assets/images/f310953b-f72c-4f5f-a4e1-b69a0ddb99eb.jpeg",
      name: "Samosa",
      countryName: "Wordly",
    ),
    FoodCardModel(
      info:
          " dish made from the leaves of Corchorus olitorius, commonly known in English as jute mallow.",
      image: "assets/images/0a498dce-5ca4-4a94-8fff-c584fb660402.jpeg",
      name: "Mulukhiyah",
      countryName: "Egypt",
    ),
    FoodCardModel(
      
      info:
          " classic Italian pasta dish that combines simple ingredients to create a rich and indulgent flavor",
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
