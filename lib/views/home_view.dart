import 'package:flutter/material.dart';
import 'package:tic_tac_toe_game/provider/game_board_provider.dart';
import 'package:tic_tac_toe_game/views/game_board_view.dart';
import 'package:provider/provider.dart';

class HomeView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("井字遊戲"),
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 8),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const SizedBox(height: 16),
            const Text(
              "自己玩",
              style: TextStyle(
                fontSize: 22,
                fontWeight: FontWeight.bold,
                letterSpacing: 0.88,
              ),
            ),
            const SizedBox(height: 16),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                ElevatedButton(
                  onPressed: () {
                    context.read<GameBoardProvider>().user = "X";
                    GameBoardView.navigateToGameBoard(context);
                  },
                  child: const Text(
                    "玩家選擇 X",
                    style: TextStyle(
                      fontSize: 16,
                    ),
                  ),
                ),
                ElevatedButton(
                  onPressed: () {
                    context.read<GameBoardProvider>().user = "X";
                    context.read<GameBoardProvider>().twoPlayerGame = true;
                    GameBoardView.navigateToGameBoard(context);
                  },
                  child: const Text(
                    "玩家對戰",
                    style: TextStyle(
                      fontSize: 16,
                    ),
                  ),
                ),
                ElevatedButton(
                  onPressed: () {
                    context.read<GameBoardProvider>().user = "O";
                    context.read<GameBoardProvider>().aiTurn();
                    GameBoardView.navigateToGameBoard(context);
                  },
                  child: const Text(
                    "玩家選擇 O",
                    style: TextStyle(
                      fontSize: 16,
                    ),
                  ),
                )
              ],
            ),
            const SizedBox(height: 20),
            const Text(
              "讓AI為你玩吧!",
              style: TextStyle(
                fontSize: 22,
                fontWeight: FontWeight.bold,
                letterSpacing: 0.88,
              ),
            ),
            const SizedBox(height: 16),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                ElevatedButton(
                  onPressed: () {
                    context.read<GameBoardProvider>().user = null;
                    context.read<GameBoardProvider>().aiTurn();
                    GameBoardView.navigateToGameBoard(context);
                  },
                  child: const Text(
                    "AI 大戰",
                    style: TextStyle(
                      fontSize: 16,
                    ),
                  ),
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
