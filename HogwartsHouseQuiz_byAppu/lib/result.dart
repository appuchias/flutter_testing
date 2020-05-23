import 'package:flutter/material.dart';

class Result extends StatelessWidget {
  final int _score;
  final Function redo;

  Result(this._score, this.redo);

// 5-10 - 11-18 - 19-23 - 24-30
  String get resultPhrase {
    String resultText;
    if (_score <= 10) {
      resultText = "Hufflepuff!";
    } else if (_score <= 18) {
      resultText = "Gryffindor!";
    } else if (_score <= 23) {
      resultText = "Ravenclaw!";
    } else {
      resultText = "Slytherin!";
    }
    return resultText;
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: <Widget>[
          Text(
            resultPhrase,
            style: TextStyle(fontSize: 36, fontWeight: FontWeight.bold),
          ),
          FlatButton(
            child: Text("Redo"),
            onPressed: redo,
            textColor: Colors.blue,
          ),
        ],
      ),
    );
  }
}
