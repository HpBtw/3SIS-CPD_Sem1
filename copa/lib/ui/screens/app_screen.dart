import 'package:copa/ui/components/app_bar.dart';
import 'package:flutter/material.dart';

class CopaAppScreen extends StatefulWidget {
  const CopaAppScreen({super.key});

  @override
  State<CopaAppScreen> createState() => _CopaAppScreenState();
}

class _CopaAppScreenState extends State<CopaAppScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: TopBar(),
      body: Padding(
        padding: const EdgeInsets.fromLTRB(16, 8, 16, 8),
        child: SizedBox(
          width: double.infinity,
          height: double.infinity,
          child: Column(),
        ),
      ),
    );
  }
}
