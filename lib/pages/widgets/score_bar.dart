import 'package:flutter/material.dart';

class ScoreBar extends StatelessWidget {
  const ScoreBar({
    super.key,
    required this.player1Score,
    required this.player2Score,
  });

  final int player1Score;
  final int player2Score;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(24.0),
      margin: EdgeInsets.symmetric(horizontal: 10.0),
      decoration: BoxDecoration(
          color: Colors.blue[100], borderRadius: BorderRadius.circular(10.0)),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          Text(
            "Player (x) Score: $player1Score",
            style: TextStyle(color: Colors.black, fontSize: 16),
          ),
          Text(
            "Player (o) Score: $player2Score",
            style: TextStyle(color: Colors.black, fontSize: 16),
          ),
        ],
      ),
    );
  }
}
