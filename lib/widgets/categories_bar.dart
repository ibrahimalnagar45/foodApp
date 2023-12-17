import 'package:flutter/material.dart';
import 'package:plantapp/pages/dessert_page.dart';
import 'package:plantapp/pages/plates_page.dart';
import 'package:plantapp/widgets/plats_list_view.dart';

class CategoriesBar extends StatelessWidget {
  const CategoriesBar({super.key, required this.message});
  final String message;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 12, right: 12, bottom: 24),
      child: Row(
        mainAxisSize: MainAxisSize.max,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Container(
            decoration: BoxDecoration(
              color: Colors.transparent,
              boxShadow: [
                BoxShadow(
                  blurRadius: 15,
                  offset: const Offset(-8, 7),
                  color:
                      const Color.fromARGB(255, 202, 42, 42).withOpacity(.15),
                ),
              ],
            ),
            child: Text(
              message,
              style: const TextStyle(
                  fontSize: 30, color: Color.fromARGB(255, 94, 2, 2)),
            ),
          ),
          GestureDetector(
            onTap: () {
              if (message == "Plates") {
                Navigator.pushNamed(context, PlatesPage.id);
              } else {
                Navigator.pushNamed(context, DessertPage.id);
              }
            },
            child: ClipRRect(
              borderRadius: BorderRadius.circular(12),
              child: Container(
                color: const Color.fromARGB(255, 94, 2, 2),
                height: 25,
                width: 50,
                child: const Center(
                  child: Text(
                    "All",
                    style: TextStyle(fontSize: 15, color: Colors.white),
                  ),
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
