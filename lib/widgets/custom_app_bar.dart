import 'package:flutter/material.dart';

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
        Icon(
          Icons.person,
          color: Colors.black,
        )
      ],
    );
  }
}
