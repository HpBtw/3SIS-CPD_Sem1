import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:ludoboardgames/model/boardgame.dart';
import 'package:ludoboardgames/model/game_publisher.dart';
import 'package:ludoboardgames/repository/boardgame_repository.dart';
import 'package:ludoboardgames/repository/game_publisher_repository.dart';
import 'package:ludoboardgames/ui/components/boardgame_card.dart';
import 'package:ludoboardgames/ui/components/game_publisher_card.dart';
import 'package:ludoboardgames/ui/components/top_bar.dart';

class BoardGamesScreen extends StatefulWidget {
  const BoardGamesScreen({super.key});

  @override
  State<BoardGamesScreen> createState() => _BoardGamesScreenState();
}

class _BoardGamesScreenState extends State<BoardGamesScreen> {
  late List<GamePublisher> gamesPublisherState;
  late List<BoardGame> boardGamesListState;
  final TextEditingController _searchController = TextEditingController();
  GamePublisher _publisherController = getAllGamesPublishers().first;

  @override
  void initState() {
    super.initState();
    gamesPublisherState = getAllGamesPublishers();
    boardGamesListState = getAllBoardGames();
    _searchController.addListener(() {
      setState(() {});
    });
  }

  @override
  void dispose() {
    _searchController.dispose();
    super.dispose();
  }

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
                    return GamePublisherCard(
                      gamePublisher: publisher,
                      onClick: (publisher) {
                        setState(() {
                          boardGamesListState = getBoardGamesBy(publisher);
                          _publisherController = publisher;
                        });
                      },
                    );
                  },
                ),
              ),
              SizedBox(height: 10),
              Divider(height: 1, color: Colors.grey),
              Padding(
                padding: const EdgeInsets.fromLTRB(5, 10, 5, 10),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "Jogos de ${_publisherController.name}",
                      style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    Icon(Icons.delete, color: Colors.blueGrey, size: 20),
                  ],
                ),
              ),
              Divider(height: 1, color: Colors.grey),
              SizedBox(height: 10),
              TextField(
                controller: _searchController,
                decoration: InputDecoration(
                  border: const OutlineInputBorder(),
                  labelText: 'Nome do jogo',
                  suffixIcon: IconButton(
                    onPressed: () {
                      // buscar jogo
                    },
                    icon: const Icon(Icons.search),
                  ),
                ),
              ),
              SizedBox(height: 10),
              Expanded(
                child: ListView.separated(
                  scrollDirection: Axis.vertical,
                  padding: const EdgeInsets.symmetric(horizontal: 16),
                  itemBuilder: (context, index) {
                    final boardgame = boardGamesListState[index];
                    return BoardgameCard(boardgame: boardgame);
                  },
                  separatorBuilder: (_, _) => const SizedBox(width: 16),
                  itemCount: boardGamesListState.length,
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

class MouseScrollBehavior extends MaterialScrollBehavior {
  @override
  Set<PointerDeviceKind> get dragDevices => {
    PointerDeviceKind.touch,
    PointerDeviceKind.mouse,
    PointerDeviceKind.trackpad,
  };
}
