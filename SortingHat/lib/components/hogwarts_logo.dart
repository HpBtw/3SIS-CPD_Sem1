import 'package:flutter/material.dart';

class HogwartsLogo extends StatelessWidget {
  const HogwartsLogo({super.key});

  @override
  Widget build(BuildContext context) {
    return Text(
      "Harry Potter",
      style: TextStyle(
        fontSize: 96,
        fontFamily: "HarryPotter",
        color: Colors.white,
      ),
    );
  }
}
