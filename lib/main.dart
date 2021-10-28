import 'package:flutter/material.dart';
import 'package:quiz_app/Result.dart';
import 'Quiz.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  // This widget is the root of your application.

  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  int _questionsIndex = 0;
  int totalScore = 0;

  var questions = [
    "What's your name?",
    "What's your age?",
    "What's your gender?"
  ];

  var questionsans = [
    {
      'questionText': 'What\'s your favourite colour?',
      'answers': [
        {'text': 'Blue', 'score': 10},
        {'text': 'Black', 'score': 10},
        {'text': 'White', 'score': 10},
        {'text': 'Green', 'score': 10},
      ],
    },
    {
      'questionText': 'What\'s your favourite Food?',
      'answers': [
        {'text': 'Ice Cream', 'score': 20},
        {'text': 'Sandwhich', 'score': 10},
        {'text': 'Pizza', 'score': 15},
        {'text': 'Burger', 'score': 10},
      ],
    },
    {
      'questionText': 'What\'s favourite sports?',
      'answers': [
        {'text': 'Cricket', 'score': 10},
        {'text': 'Football', 'score': 15},
        {'text': 'Swimming', 'score': 25},
        {'text': 'Cycling', 'score': 20},
      ],
    },
    {
      'questionText': 'What\'s favourite city?',
      'answers': [
        {'text': 'New York', 'score': 10},
        {'text': 'Paris', 'score': 15},
        {'text': 'London', 'score': 10},
        {'text': 'Melbourne', 'score': 20},
      ],
    },
    {
      'questionText': 'What\'s favourite Cricketer?',
      'answers': [
        {'text': 'Sakib', 'score': 20},
        {'text': 'Musfiq', 'score': 15},
        {'text': 'Riyad', 'score': 10},
        {'text': 'Mustafez', 'score': 20},
      ],
    },
    {
      'questionText': 'What\'s favourite Car?',
      'answers': [
        {'text': 'Ferrari', 'score': 10},
        {'text': 'Porsche', 'score': 15},
        {'text': 'Bugatti', 'score': 10},
        {'text': 'Mercedes', 'score': 20},
      ],
    },
  ];

  void setQuestions() {
    setState(() {
      _questionsIndex = _questionsIndex + 1;
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("Quiz App"),
        ),
        body: Center(
          child: Center(
            child: _questionsIndex < questionsans.length
                ? Quiz(
                    questionsans: questionsans,
                    questionsIndex: _questionsIndex,
                    selectAnswer: selectAnswer)
                : Result(totalScore, _resetQuiz),
          ),
        ),
      ),
    );
  }

  void selectAnswer(int score) {
    totalScore = totalScore + score;
    setState(() {
      _questionsIndex = _questionsIndex + 1;
    });
    print(_questionsIndex);
  }

  void _resetQuiz() {
    setState(() {
      _questionsIndex = 0;
      totalScore = 0;
    });
  }
}
