import 'package:flutter/material.dart';

// void main() => runApp(MyApp());

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  var questionIndex = 0;

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
            Text(questions[questionIndex]),
            RaisedButton(
              child: Text("Option 1"),
              onPressed: () {
                questionIndex++;
                print("Answer 1");
              },
            ),
            RaisedButton(
              child: Text("Option 2"),
              onPressed: () {
                questionIndex++;
                print("Answer 2");
              },
            ),
            RaisedButton(
              child: Text("Option 3"),
              onPressed: () {
                questionIndex++;
                print("Answer 3");
              },
            ),
          ],
        ),
      ),
    );
  }
}
