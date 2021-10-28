import 'package:flutter/material.dart';
import 'Answer.dart';
import 'Questions.dart';

class Quiz extends StatelessWidget {
  final List<Map<String, dynamic>> questionsans;
  final int questionsIndex;
  final Function selectAnswer;

  const Quiz(
      {required this.questionsans,
      required this.questionsIndex,
      required this.selectAnswer});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          // Text(questions[_questionsIndex]),
          Question(
            questionsans[questionsIndex]['questionText'],
          ),
          ...(questionsans[questionsIndex]['answers']
                  as List<Map<String, Object>>)
              .map((answer) {
            return Answer(
                () => selectAnswer(answer['score']), answer['text'].toString());
          }).toList(),
        ],
      ),
    );
  }
}
