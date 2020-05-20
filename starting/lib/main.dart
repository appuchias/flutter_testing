import 'package:flutter/material.dart';

import './question.dart';

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
  var _questionIndex = 0;

  void _answerQuestion() {
    setState(() {
      _questionIndex++;
    });
    print(_questionIndex);
  }

  @override
  Widget build(BuildContext ctx) {
    var questions = [
      "Which is your favourite color?",
      "Which is your favourite animal?",
      "Which would you prefer?",
      "If Wumpus invited you to a party but you prefer to hang out with Ned, what would you do?",
    ];
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("My first app"),
        ),
        body: Column(
          children: <Widget>[
            Question(
              questions[_questionIndex],
            ),
            RaisedButton(
              child: Text("Option 1"),
              onPressed: _answerQuestion,
            ),
            RaisedButton(
              child: Text("Option 2"),
              onPressed: _answerQuestion,
            ),
            RaisedButton(
              child: Text("Option 3"),
              onPressed: _answerQuestion,
            ),
          ],
        ),
      ),
    );
  }
}
