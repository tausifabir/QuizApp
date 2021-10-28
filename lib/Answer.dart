import 'package:flutter/material.dart';

class Answer extends StatelessWidget {
  final VoidCallback selectAnswer;
  final String answerText;
  Answer(this.selectAnswer, this.answerText);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      child: TextButton(
        child: Text(answerText),
        onPressed: selectAnswer,
      ),
    );
  }
}
