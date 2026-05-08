import 'package:flutter/material.dart';
import 'package:ludoboardgames/ui/components/app_logo.dart';

void main() {
  runApp(LudoGamesApp());
}

class LudoGamesApp extends StatelessWidget {
  const LudoGamesApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(),
      home: LudoGamesScreen(),
      debugShowCheckedModeBanner: false,
    );
  }
}

class LudoGamesScreen extends StatefulWidget {
  const LudoGamesScreen({super.key});

  @override
  State<LudoGamesScreen> createState() => _LudoGamesScreenState();
}

class _LudoGamesScreenState extends State<LudoGamesScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(16),
          child: Column(children: [LudoGamesAppBar()]),
        ),
      ),
      // body: Column(
      //   children: [LudoGamesAppBar()],
      // ),
    );
  }
}

class LudoGamesAppBar extends StatelessWidget {
  const LudoGamesAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return AppBar(
      title: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          //AppLogo(), Icon(Icons.notifications)
          ],
      ),
    );
  }
}
