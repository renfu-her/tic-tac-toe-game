import 'package:flutter/material.dart';
import 'package:tic_tac_toe_game/provider/game_board_provider.dart';
import 'package:tic_tac_toe_game/services/game_service.dart';
import 'package:tic_tac_toe_game/views/home_view.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (BuildContext context) {
        return GameBoardProvider(service: GameService());
      },
      child: MaterialApp(
        title: 'TicTacToe in Flutter',
        debugShowCheckedModeBanner: false,
        theme: ThemeData(
          primarySwatch: Colors.green,
        ),
        home: HomeView(),
      ),
    );
  }
}
