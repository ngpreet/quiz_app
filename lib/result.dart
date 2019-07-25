import 'package:flutter/material.dart';

class Result extends StatelessWidget {
  final int score;
  final Function resetQuiz;

  String get resultPhrase {
    var resultText;
    if (score <= 8) {
      resultText = 'You are awesome and innocent!';
    } else if (score <= 16) {
      resultText = 'Pretty likable';
    } else {
      resultText = 'You are strange';
    }
    return resultText;
  }

  Result(this.score, this.resetQuiz);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: <Widget>[
          Text(
            resultPhrase,
            style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
            textAlign: TextAlign.center,
          ),
          FlatButton(
            child: Text('Reset Quiz!'),
            textColor: Colors.blue,
            onPressed: resetQuiz,
          )
        ],
      ),
    );
  }
}
