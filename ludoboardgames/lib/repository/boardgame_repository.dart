import 'package:ludoboardgames/model/boardgame.dart';
import 'package:ludoboardgames/model/game_publisher.dart';
import 'package:ludoboardgames/repository/game_publisher_repository.dart';

List<BoardGame> getAllBoardGames() {
  return [
    BoardGame(
      title: "Azul",
      gamesPublisher: [asmodee],
      imgPath: "assets/imgs/azul.jpg",
    ),
    BoardGame(
      title: "Ticket To Ride",
      gamesPublisher: [asmodee],
      imgPath: "assets/imgs/tickettoride.jpg",
    ),
    BoardGame(
      title: "Quem Foi?",
      gamesPublisher: [paperGames],
      imgPath: "assets/imgs/quemfoi.jpg",
    ),
    BoardGame(
      title: "7 Wonders",
      gamesPublisher: [asmodee],
      imgPath:
          "assets/imgs/7wonders.jpg", // Imagem: Procure pela capa da "2nd Edition" (azul escura com a estátua)
    ),
    BoardGame(
      title: "Splendor",
      gamesPublisher: [asmodee],
      imgPath:
          "assets/imgs/splendor.jpg", // Imagem: Capa clássica branca com o rosto do mercador e as joias
    ),
    BoardGame(
      title: "Carcassonne",
      gamesPublisher: [devir],
      imgPath:
          "assets/imgs/carcassonne.jpg", // Imagem: Capa azul clássica com a cidade medieval e o cavaleiro
    ),
    BoardGame(
      title: "Catan",
      gamesPublisher: [devir],
      imgPath:
          "assets/imgs/catan.jpg", // Imagem: Capa do sol nascendo com o título em vermelho
    ),

    // --- CALAMITY ---
    BoardGame(
      title: "Parks",
      gamesPublisher: [calamity],
      imgPath:
          "assets/imgs/parks.jpg", // Imagem: Capa de ilustração estilo pôster de parque florestal com um urso
    ),
    BoardGame(
      title: "Turing Machine",
      gamesPublisher: [calamity],
      imgPath:
          "assets/imgs/turingmachine.jpg", // Imagem: Capa branca com formas geométricas e furos (estilo cartão perfurado)
    ),

    // --- CONCLAVE ---
    BoardGame(
      title: "Sagrada",
      gamesPublisher: [conclave],
      imgPath:
          "assets/imgs/sagrada.jpg", // Imagem: Vitral colorido da basílica da Sagrada Família
    ),
    BoardGame(
      title: "Clank!",
      gamesPublisher: [conclave],
      imgPath:
          "assets/imgs/clank.jpg", // Imagem: Capa do dragão atacando os ladrões nas masmorras
    ),

    // --- PAPER GAMES ---
    BoardGame(
      title: "Bandido",
      gamesPublisher: [paperGames],
      imgPath:
          "assets/imgs/bandido.jpg", // Imagem: Capa pequena da caixa amarela com o bandido cavando
    ),
    BoardGame(
      title: "Cartógrafos",
      gamesPublisher: [paperGames],
      imgPath:
          "assets/imgs/cartografos.jpg", // Imagem: Capa bege parecendo um pergaminho antigo com o título vermelho
    ),

    // --- MEEPLE BR ---
    BoardGame(
      title: "Terraforming Mars",
      gamesPublisher: [meepleBR],
      imgPath:
          "assets/imgs/terraformingmars.jpg", // Imagem: Planeta Marte no fundo e o astronauta na frente
    ),
    BoardGame(
      title: "Everdell",
      gamesPublisher: [meepleBR],
      imgPath:
          "assets/imgs/everdell.jpg", // Imagem: Árvore gigante (Evertree) com os animais da floresta em volta
    ),

    // --- JELLY MONSTER ---
    BoardGame(
      title: "Wandering Towers",
      gamesPublisher: [jellyMonster],
      imgPath:
          "assets/imgs/wanderingtowers.jpg", // Imagem: Torre mágica voando com magos (A do seu print!)
    ),
    BoardGame(
      title: "Tokyo Highway",
      gamesPublisher: [jellyMonster],
      imgPath:
          "assets/imgs/tokyohighway.jpg", // Imagem: Capa cinza minimalista com a rua desenhada (A do seu print!)
    ),

    // --- ACROSS THE BOARD ---
    BoardGame(
      title: "Copenhagen",
      gamesPublisher: [acrossTheBoard],
      imgPath:
          "assets/imgs/copenhagen.jpg", // Imagem: Prédios coloridos beirando o canal de água
    ),
    BoardGame(
      title: "Pappy Winchester",
      gamesPublisher: [acrossTheBoard],
      imgPath:
          "assets/imgs/pappywinchester.jpg", // Imagem: Desenho estilo velho-oeste com um senhor no trem
    ),

    // --- GROK ---
    BoardGame(
      title: "A Tripulação",
      gamesPublisher: [grok],
      imgPath:
          "assets/imgs/atripulacao.jpg", // Imagem: Fundo espacial roxo escuro com os 4 astronautas
    ),
    BoardGame(
      title: "It's a Wonderful World",
      gamesPublisher: [grok],
      imgPath:
          "assets/imgs/itsawonderfulworld.jpg", // Imagem: Cidade retrofuturista com o soldado olhando para ela
    ),

    // --- MOSAICO ---
    BoardGame(
      title: "Hansa Teutonica",
      gamesPublisher: [mosaico],
      imgPath:
          "assets/imgs/hansateutonica.jpg", // Imagem: Capa "Big Box" com tema de mercadores na Alemanha antiga
    ),
    BoardGame(
      title: "Medina",
      gamesPublisher: [mosaico],
      imgPath:
          "assets/imgs/medina.jpg", // Imagem: Palácios de madeira coloridos no meio do deserto
    ),

    // --- BURÓ ---
    BoardGame(
      title: "Spicy",
      gamesPublisher: [buro],
      imgPath:
          "assets/imgs/spicy.jpg", // Imagem: Capa dourada metalizada brilhante com o tigre desenhado
    ),
    BoardGame(
      title: "Valeria: Reinos de Cartas",
      gamesPublisher: [buro],
      imgPath:
          "assets/imgs/valeria.jpg", // Imagem: Capa épica de fantasia com um guerreiro, mago e monstros
    ),
  ];
}

List<BoardGame> getBoardGamesBy(GamePublisher gamePublisher) {
  return getAllBoardGames()
      .where((boardGame) => boardGame.gamesPublisher.contains(gamePublisher))
      .toList();
}
