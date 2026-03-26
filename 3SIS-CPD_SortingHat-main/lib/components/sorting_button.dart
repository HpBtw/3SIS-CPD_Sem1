import 'package:flutter/material.dart';

enum SortingState { idle, sorting, result }

class SortingButton extends StatelessWidget {
  const SortingButton({
    super.key,
    required this.state,
    required this.onPressed,
  });

  final SortingState state;
  final VoidCallback onPressed;

  @override
  Widget build(BuildContext context) {
    String text;

    switch (state) {
      case SortingState.idle:
        text = "Descobrir minha casa";
        break;
      case SortingState.sorting:
        text = "Pensando ...";
        break;
      case SortingState.result:
        text = "Sua casa selecionada é ";
        break;
    }

    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 40),
      child: ElevatedButton(
        onPressed: state == SortingState.idle ? onPressed : null,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset(
              "assets/images/icone_chapeu_seletor.png",
              height: 40,
              color: Colors.white,
            ),
            SizedBox(width: 12),
            Text(text, style: TextStyle(fontSize: 18)),
          ],
        ),
      ),
    );
  }
}
