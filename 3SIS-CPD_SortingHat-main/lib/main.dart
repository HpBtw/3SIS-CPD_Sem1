import 'package:flutter/material.dart';
import 'package:sorting_hat/screens/sorting_hat_screen.dart';

void main() {
  runApp(SortingHatApp());
}

class SortingHatApp extends StatelessWidget {
  const SortingHatApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Chapeu Seletor",
      debugShowCheckedModeBanner: false,
      home: SortingHatScreen(),
    );
  }
}
