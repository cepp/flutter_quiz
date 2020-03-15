import 'package:flutter/material.dart';

class Result extends StatelessWidget {
  final int totalScore;
  final Function resetQuiz;

  Result({@required this.totalScore, @required this.resetQuiz});

  String get restultPhrase {
    var resultText = 'You did it';

    if (this.totalScore <= 8) {
      resultText = 'You are awesome and innocent!';
    } else if (this.totalScore <= 8) {
      resultText = 'Pretty likeable!';
    } else if (this.totalScore <= 16) {
      resultText = 'You are ... strange?!!';
    } else {
      resultText = 'You are so bad!!';
    }
    return resultText;
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: [
          Text(
            this.restultPhrase,
            style: TextStyle(fontSize: 36, fontWeight: FontWeight.bold),
            textAlign: TextAlign.center,
          ),
          FlatButton(
            color: Colors.blue,
            textColor: Colors.white,
            child: Text('Restart Quiz'),
            onPressed: this.resetQuiz,
          ),
        ],
      ),
    );
  }
}
