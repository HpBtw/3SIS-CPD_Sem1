import 'package:flutter/material.dart';
import 'package:ludoboardgames/model/boardgame.dart';

class BoardgameCard extends StatelessWidget {
  final BoardGame boardgame;

  const BoardgameCard({super.key, required this.boardgame});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 100,
      height: 100,
      child: Card(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(
            12,
          ),
        ),
        elevation: 4,
        child: Center(
          child: Padding(
            padding: const EdgeInsets.all(8),
            child: Text(boardgame.title, textAlign: TextAlign.center),
          ),
        ),
      ),
    );
  }
}
