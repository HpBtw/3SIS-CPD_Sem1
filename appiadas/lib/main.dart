import 'dart:math';

import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(title: "Appiadas", home: AppiadasScreen());
  }
}

class Piada {
  final String pergunta;
  final String resposta;

  Piada({required this.pergunta, required this.resposta});
}

class AppiadasScreen extends StatefulWidget {
  const AppiadasScreen({super.key});

  @override
  State<AppiadasScreen> createState() => _AppiadasScreenState();
}

class _AppiadasScreenState extends State<AppiadasScreen> {

  final List<Piada> _piadas = [
    Piada(
    pergunta: "Por que o dev levou o pc ao médico?", 
    resposta: "Porque ele tava com vírus."
    ),
    Piada(
    pergunta: "Por que o livro de matemática estava triste?", 
    resposta: "Porque ele tinha vários problemas."
    ),
  ];

Piada _piadaSelecionada = Piada(
  pergunta: "Aqui terá uma piada",
  resposta: ""); // underline antes da variavel significa que ela será privada

void _trocarPiada() {
  final i = Random().nextInt(_piadas.length);
  setState(() {
      _piadaSelecionada = _piadas[i];
  });
}

  @override
  Widget build(BuildContext context) {
    // return Text("Ola turma");
    return Scaffold(
      //appBar: AppBar(title: Text("Appiadas")),
      body: Container(
        // padding: EdgeInsets.all(16), substitui o child: padding
        width: double.infinity,
        decoration: const BoxDecoration(
          image: DecorationImage(
            image: AssetImage("images/background_joker.png"),
            fit: BoxFit.cover,
          ),
        ),
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Text(
                "${_piadaSelecionada.pergunta}\n${_piadaSelecionada.resposta}",
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 24,
                  fontStyle: FontStyle.italic,
                  fontWeight: FontWeight.bold,
                  color: Colors.pinkAccent,
                ),
              ),
          
              SizedBox(height: 24),
              SizedBox(
                width: double.infinity,
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    padding: EdgeInsets.symmetric(vertical: 16),
                  ),
                  onPressed: _trocarPiada,
                  child: Text("Nova piada")),
              ),
            ],
          ),
        ),
      ), // Text("textobase")
    );
  }
}
