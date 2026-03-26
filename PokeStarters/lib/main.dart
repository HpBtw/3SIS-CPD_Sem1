import 'package:flutter/material.dart';

void main() {
  runApp(PokemonStarterApp());
}

class PokemonStarterApp extends StatelessWidget {
  const PokemonStarterApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(useMaterial3: true),
      home: PokemonStarterScreen(),
    );
  }
}

class PokemonStarterScreen extends StatefulWidget {
  const PokemonStarterScreen({super.key});

  @override
  State<PokemonStarterScreen> createState() => _PokemonStarterScreenState();
}

class _PokemonStarterScreenState extends State<PokemonStarterScreen> {
  Pokemon pokemonSelected = starters.first;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          PokeHeader("Escolha seu Pokémon inicial"),
          PokemonCard(pokemonSelected),
        ],
      ),
    );
  }
}

class PokeHeader extends StatelessWidget {
  const PokeHeader(this.text, {super.key});

  final String text;

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
    );
  }
}

class Pokemon {
  final String nome;
  final String img;

  Pokemon({required this.nome, required this.img});
}

final starters = [
  Pokemon(nome: "Bulbassauro", img: "images/bulbassaur.png"),
  Pokemon(nome: "Squitle", img: "images/squirtle.png"),
  Pokemon(nome: "Charmander", img: "images/charmander.png"),
];

class PokemonCard extends StatelessWidget {
  const PokemonCard(this.pokemon, {super.key});

  final Pokemon pokemon;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Image.asset(pokemon.img, width: 250, height: 250),
        Text(
          pokemon.nome.toUpperCase(),
          style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
        ),
      ],
    );
  }
}
