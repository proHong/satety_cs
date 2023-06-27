import 'package:flutter/material.dart';
import 'package:safety_cs/widgets/TheCard.dart';

class Board extends StatefulWidget {
  const Board({super.key});

  @override
  State<Board> createState() => _BoardState();
}

class _BoardState extends State<Board> {
  @override
  Widget build(BuildContext context) {
    return TheCard(top: Text("Hello"), bottom: Text("Bottom"));
  }
}
