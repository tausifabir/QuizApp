import 'package:flutter/material.dart';

class Result extends StatelessWidget {
  final int finalScore;
  final VoidCallback resultQuiz;

  const Result(this.finalScore, this.resultQuiz);

  String get resultPhrase {
    //property, but value is calculated dynamically
    String resultText;
    if (finalScore <= 80) {
      resultText = 'You are awesome and innocent!';
    } else if (finalScore <= 100) {
      resultText = 'Pretty likeable!';
    } else if (finalScore >= 110) {
      resultText = 'You are ... strange?!';
    } else if (finalScore < 60) {
      resultText = 'You are so bad!';
    } else {
      resultText = 'Great! keep trying....';
    }
    return resultText;
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text("You got score: $finalScore\n"),
        Text("$resultPhrase"),
        TextButton(
          child: Text("Restart Quiz"),
          onPressed: resultQuiz,
        ),
      ],
    );
  }
}
