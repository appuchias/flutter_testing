import 'package:flutter/material.dart';

import 'question.dart';
import 'answer.dart';

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
  final questions = const [
    {
      "questionText": "Which is your favourite color?",
      "answers": ["Blue", "Red", "Black", "White", "Yellow"]
    },
    {
      "questionText": "Which is your favourite animal?",
      "answers": ["Cat", "Dog", "Cheetah", "Tortoise"]
    },
    {
      "questionText": "Which would you prefer?",
      "answers": ["Know when you'll die", "Know how you'll die", "Neither"]
    },
    {
      "questionText":
          "If Wumpus invited you to a party but you prefer to hang out with Ned, what would you do?",
      "answers": [
        "Go with Wumpus because you value your friendship.",
        "Go with Ned and turn your status to \"Invisible\" so Wumpus doesn't know.",
        "Go hang out with Ned and tell Wumpus you feel a bit sick to party."
      ]
    },
  ];

  var _questionIndex = 0;

  void _answerQuestion() {
    setState(() {
      _questionIndex++;
    });
    print(_questionIndex);
    if (_questionIndex < questions.length) {
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
          body: _questionIndex < questions.length
              ? Column(
                  children: <Widget>[
                    Question(
                      questions[_questionIndex]["questionText"],
                    ),
                    ...(questions[_questionIndex]["answers"] as List<String>)
                        .map((answer) {
                      return Answer(_answerQuestion, answer);
                    }).toList()
                  ],
                )
              : Center(
                  child: Text("Finished!", textScaleFactor: 5,),
                )),
    );
  }
}
