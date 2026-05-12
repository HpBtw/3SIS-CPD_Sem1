import 'package:flutter/material.dart';
import 'package:ludoboardgames/model/game_publisher.dart';
import 'package:ludoboardgames/repository/game_publisher_repository.dart';
import 'package:ludoboardgames/ui/components/top_bar.dart';

class BoardGamesScreen extends StatefulWidget {
  const BoardGamesScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: LudoBGTopBar(
        actions: [
          IconButton(
            onPressed: () {
              // ação
            },
            icon: const Icon(Icons.notifications),
            tooltip: 'Notificações',
          ),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.fromLTRB(16, 0, 16, 0),
        child: SizedBox(
          width: double.infinity,
          height: double.infinity,
          child: Column(
            children: [
              SizedBox(
                height: 96,
                width: double.infinity,
                child: ListView.separated(
                  scrollDirection: Axis.horizontal,
                  padding: const EdgeInsets.symmetric(horizontal: 16),
                  itemCount: gamesPublisherState.length,
                  separatorBuilder: (_, _) => const SizedBox(width: 16),
                  itemBuilder: (context, index) {
                    final publisher = gamesPublisherState[index];
                    return Chip(label: Text(publisher.name));
                  },
                ),
              ),
              // widgets aqui
            ],
          ),
        ),
      ),
    );
  }
}

@override
class _BoardGamesScreenState extends State<BoardGamesScreen> {
  late List<GamePublisher> gamesPublisherState;
  @override
  void initState() {
    super.initState();
    gamesPublisherState = getAllGamesPublishers();
  }
}
