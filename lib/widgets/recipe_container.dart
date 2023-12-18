import 'package:flutter/material.dart';
import 'package:plantapp/models/food_card_model.dart';
import 'package:plantapp/pages/recipe_page.dart';

class RecipeCard extends StatelessWidget {
  const RecipeCard({super.key, required this.food});
  final FoodCardModel food;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => Navigator.push(
          context,
          MaterialPageRoute(
              builder: (context) => RecipePage(
                    food: food,
                  ))),
      child: Container(
        margin: const EdgeInsets.only(right: 12, left: 12, bottom: 12),
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(12),
          boxShadow: [
            BoxShadow(
              blurRadius: 8,
              offset: const Offset(0, 3),
              color: Colors.grey.withOpacity(.25),
            ),
            BoxShadow(
              blurRadius: 8,
              offset: const Offset(0, -3),
              color: Colors.grey.withOpacity(.25),
            ),
          ],
        ),
        height: 100,
        width: 500,
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Container(
              height: 100,
              width: 100,
              decoration: BoxDecoration(
                borderRadius: const BorderRadius.only(
                    bottomLeft: Radius.circular(12),
                    topLeft: Radius.circular(12)),
                image: DecorationImage(
                  fit: BoxFit.cover,
                  image: AssetImage(food.image),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 8.0, top: 16),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(bottom: 5.0),
                    child: Text(
                      food.name,
                      style: const TextStyle(fontSize: 20),
                    ),
                  ),
                  Container(
                    width: 250,
                    child: Text(
                      food.info,
                      style: TextStyle(
                        color: Colors.grey.shade600,
                      ),
                      maxLines: 3,
                      overflow: TextOverflow.ellipsis,
                    ),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
