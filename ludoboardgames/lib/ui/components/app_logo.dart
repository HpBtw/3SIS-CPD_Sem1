import 'package:flutter/material.dart';

class AppLogo extends StatelessWidget {
  const AppLogo({super.key});

  @override
  Widget build(BuildContext context) {
    return const Text(
      "Board games",
      style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
    );
  }
}
