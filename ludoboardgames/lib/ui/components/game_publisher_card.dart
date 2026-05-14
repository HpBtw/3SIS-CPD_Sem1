import 'package:flutter/material.dart';
import 'package:ludoboardgames/model/game_publisher.dart';

class GamePublisherCard extends StatelessWidget {
  final GamePublisher gamePublisher;
  final Function(GamePublisher)? onClick;
  const GamePublisherCard({
    super.key,
    required this.gamePublisher,
    this.onClick,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onClick != null ? () => onClick!(gamePublisher) : null,
      child: SizedBox(
        width: 100,
        height: 100,
        child: Card(
          shape: const CircleBorder(),
          elevation: 4,
          child: Center(
            child: Padding(
              padding: const EdgeInsets.all(8),
              child: Text(gamePublisher.name, textAlign: TextAlign.center),
            ),
          ),
        ),
      ),
    );
  }
}
