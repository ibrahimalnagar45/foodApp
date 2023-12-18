import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class CusotmAppBar extends StatelessWidget {
  const CusotmAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return const Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Expanded(
          child: Center(
            child: Text(
              "Foodies",
              style: TextStyle(
                fontSize: 40,
                color: Colors.black,
                fontFamily: "Satisfy",
              ),
            ),
          ),
        ),
        CircleAvatar(
          radius: 20,
          backgroundImage: AssetImage(
            "assets/images/R.jpeg",
          ),
        ),
      ],
    );
  }
}
