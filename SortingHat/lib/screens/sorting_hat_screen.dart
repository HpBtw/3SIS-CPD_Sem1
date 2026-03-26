import 'dart:math';

import 'package:flutter/material.dart';
import 'package:sorting_hat/components/hogwarts_logo.dart';
import 'package:sorting_hat/components/sorting_button.dart';

class SortingHatScreen extends StatefulWidget {
  const SortingHatScreen({super.key});

  @override
  State<SortingHatScreen> createState() => _SortingHatScreenState();
}

class _SortingHatScreenState extends State<SortingHatScreen> {
  List<String> houses = ["Grifinória", "Sonserina", "Lufa-Lufa", "Corvinal"];

  String houseSelected = "";

  SortingState state = SortingState.idle;

  Future<void> sortHouse() async {
    Random rng = Random();

    setState(() {
      state = SortingState.sorting;
      houseSelected = "";
    });

    await Future.delayed(Duration(seconds: 3));

    setState(() {
      state = SortingState.result;
      houseSelected = houses[rng.nextInt(houses.length)];
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFF0c0c1e),
      body: Column(
        children: [
          HogwartsLogo(),
          SizedBox(height: 32),
          Text(houseSelected),
          SizedBox(height: 32),
          SortingButton(state: state, onPressed: sortHouse),
        ],
      ),
    );
  }
}
