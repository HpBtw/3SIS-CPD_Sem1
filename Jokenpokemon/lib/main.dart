import 'package:flutter/material.dart';

void main() {
  runApp(JokenpokemonApp());
}

class JokenpokemonApp extends StatelessWidget {
  const JokenpokemonApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(theme: ThemeData(), home: JokenpokemonScreen());
  }
}

class JokenpokemonHeader extends StatelessWidget {
  const JokenpokemonHeader({super.key});

  @override
  Widget build(BuildContext context) {
    return JokenpokemonLogo();
  }
}

class JokenpokemonLogo extends StatelessWidget {
  const JokenpokemonLogo({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 32.0),
      child: Image(
        image: Image.asset("images/logo_pokemon.png").image, // descobrir o que é isso depois
        height: 200
      ),
    );
  }
}

class JokenpokemonScreen extends StatefulWidget {
  const JokenpokemonScreen({super.key});

  @override
  State<JokenpokemonScreen> createState() => _JokenpokemonScreenState();
}

class _JokenpokemonScreenState extends State<JokenpokemonScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(body: Column(children: [JokenpokemonHeader()]));
  }
}

class Pokemon {
  final String nome;
  final String img;
  final String tipo;

  Pokemon({required this.nome, required this.img, required this.tipo});
}

final listaPokemon = [
  Pokemon(nome: "Charmander", img: "images/charmander.png", tipo: "Fogo"),
  Pokemon(nome: "Bulbassauro", img: "images/bulbassaur.png", tipo: "Grama"),
  Pokemon(nome: "Squirtle", img: "images/squirtle.png", tipo: "Água"),
];
