import 'package:ludoboardgames/model/game_publisher.dart';

class BoardGame {
  final String title;
  final String imgPath;
  final List<GamePublisher> gamesPublisher;
  
  const BoardGame({
    required this.title,
    required this.imgPath,
    required this.gamesPublisher,
  });
}
