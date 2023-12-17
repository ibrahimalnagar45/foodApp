import 'package:flutter/material.dart';
import 'package:plantapp/models/food_card_model.dart';
import 'package:plantapp/pages/recipe_page.dart';

class FoodCard extends StatelessWidget {
  const FoodCard({super.key, required this.food});
  final FoodCardModel food;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () =>
          Navigator.push(context, MaterialPageRoute(builder: (context) {
        return RecipePage(recipe: food);
      })),
      child: Padding(
        padding: const EdgeInsets.only(left: 8.0, top: 8),
        child: Stack(
          children: [
            Container(
              width: 320,
              height: 200,
              decoration: BoxDecoration(
                color: Colors.transparent,
                borderRadius: BorderRadius.circular(24),
                image: DecorationImage(
                  image: AssetImage(food.image),
                  fit: BoxFit.cover,
                ),
              ),
            ),
            Container(
              height: 200,
              width: 320,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(24),
                gradient: const LinearGradient(
                  colors: [
                    Colors.transparent,
                    Colors.black,
                  ],
                  begin: Alignment.topCenter,
                  end: Alignment.bottomCenter,
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(bottom: 50, left: 10),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.end,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    food.name,
                    style: const TextStyle(
                      color: Colors.white,
                      fontSize: 30,
                    ),
                  ),
                  Text(
                    food.countryName,
                    style: const TextStyle(
                      color: Color.fromARGB(255, 225, 98, 89),
                      fontSize: 15,
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



// class FoodCard extends StatelessWidget {
//   const FoodCard({super.key});
//   // FoodCardModel food;
//   @override
//   Widget build(BuildContext context) {
//     return Stack(children: [
//       Container(
//         width: 300,
//         height: 150,
//         decoration: BoxDecoration(
//           borderRadius: BorderRadius.circular(20),
//           image: DecorationImage(
//             image: AssetImage(
//                 "assets/images/e0c42d72-905d-4684-b14c-3da1e35b8adb.jpeg"),
//             fit: BoxFit.cover,
//           ),
//           // gradient: LinearGradient(
//           //   colors: [
//           //     Colors.black,
//           //     Colors.orange,
//           //     Colors.red,
//           //   ],
//           //   begin: Alignment.bottomLeft,
//           //   end: Alignment.bottomRight,
//           //   tileMode: TileMode.clamp,
//           // ),
//         ),
//       ),
//       Positioned(
//         left: 0,
//         bottom: 15,
//         right: 0,
//         child: Text(
//           "Kunafa",
//           style: TextStyle(color: Colors.black, fontSize: 30),
//         ),
//       ),
//       Positioned(
//         bottom: 0,
//         left: 0,
//         right: 0,
//         child: Text(
//           "Egypt",
//           style: TextStyle(
//             fontSize: 20,
//             color: Color.fromARGB(255, 127, 16, 8),
//           ),
//         ),
//       )
//     ]);
//   }
// }
