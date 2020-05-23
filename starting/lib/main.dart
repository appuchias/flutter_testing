import 'package:flutter/material.dart';

import 'quiz.dart';
import 'result.dart';

// void main() => runApp(MyApp());

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _MyAppState();
  }
}

class _MyAppState extends State<MyApp> {
  final _questions = const [
    {
      "questionText": "Which is your favourite color?",
      "answers": [
        {"text": "Blue", "score": 7},
        {"text": "Red", "score": 5},
        {"text": "Black", "score": 10},
        {"text": "White", "score": 1},
        {"text": "Yellow", "score": 1},
        {"text": "Green", "score": 2},
      ]
    },
    {
      "questionText": "Which is your favourite animal?",
      "answers": [
        {"text": "Cat", "score": 5},
        {"text": "Dog", "score": 2},
        {"text": "Cheetah", "score": 3},
        {"text": "Tortoise", "score": 4},
      ]
    },
    {
      "questionText": "Which would you prefer?",
      "answers": [
        {"text": "Know when you'll die", "score": 1},
        {"text": "Know how you'll die", "score": 5},
        {"text": "Neither", "score": 5},
      ]
    },
    {
      "questionText":
          "If Wumpus invited you to a party but you prefer to hang out with Ned, what would you do?",
      "answers": [
        {
          "text": "Go with Wumpus because you value your friendship.",
          "score": 1,
        },
        {
          "text":
              "Go with Ned and turn your status to \"Invisible\" so Wumpus doesn't know.",
          "score": 5,
        },
        {
          "text":
              "Go hang out with Ned and tell Wumpus you feel a bit sick to party.",
          "score": 10,
        },
      ]
    },
  ];

  var _questionIndex = 0;
  int _totalScore = 0;

  void _redo() {
    setState(() {
      _questionIndex = 0;
      _totalScore = 0;
    });
  }

  void _answerQuestion(int score) {
    _totalScore += score;

    setState(() {
      _questionIndex++;
    });
    print(_questionIndex);
    if (_questionIndex < _questions.length) {
      print("We have more questions!");
    }
  }

  @override
  Widget build(BuildContext ctx) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("My first app"),
        ),
        body: _questionIndex < _questions.length
            ? Quiz(
                answerQuestion: _answerQuestion,
                questions: _questions,
                questionIndex: _questionIndex,
              )
            : Result(_totalScore, _redo),
      ),
    );
  }
}
