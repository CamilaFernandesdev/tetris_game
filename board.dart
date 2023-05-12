import 'package:flutter/material.dart';
import 'package: tetris_game/pixel.dart'
void main() => runApp(GameBoard());

class GameBoard extends StatefulWidget {
  const GameBoard({Key? key}) : super(key: key);

  @override
  State<GameBoard> createState() => _GameBoardState();
}

class _GameBoardState extends State<GameBoard> {
  // grid dimensions
  int rowLenght = 10;
  int colLenght = 15;

  @override
  Widget build(BuildContext context) {
    // Remover material app
    return MaterialApp(
        home: Scaffold(
            backgroundColor: Colors.black,
            body: GridView.builder(
              itemCount: rowLenght * colLenght,
              physics: const NeverScrollableScrollPhysics(),
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: rowLenght),
              itemBuilder: (context, index) => Pixel(color: Colors.pink, child: index) // Pixel
                  ), // GridView
            ) // Scaffold
            );
  }
}

