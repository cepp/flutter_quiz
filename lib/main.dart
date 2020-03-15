import 'package:flutter/material.dart';

import './quiz.dart';
import './result.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  var _questionIndex = 0;
  var _totalScore = 0;

  final _questions = const [
    {
      'questionText': 'What\'s your favorite color?',
      'answers': [
        {'text': 'Black', 'score': 1},
        {'text': 'Red', 'score': 10},
        {'text': 'Green', 'score': 10},
        {'text': 'White', 'score': 1}
      ],
    },
    {
      'questionText': 'What\'s your favorite animal?',
      'answers': [
        {'text': 'Rabbit', 'score': 1},
        {'text': 'Snake', 'score': 5},
        {'text': 'Elephant', 'score': 3},
        {'text': 'Lion', 'score': 10}
      ],
    },
    {
      'questionText': 'Who\'s your favorite instructor?',
      'answers': [
        {'text': 'Max', 'score': 10},
        {'text': 'Carlos', 'score': 3},
        {'text': 'Cadu', 'score': 1},
        {'text': 'Hozwaudinho', 'score': 1}
      ],
    },
  ];

  void _answerQuestion(int score) {
    this._totalScore += score;

    setState(() {
      this._questionIndex += 1;
    });

    if (this._questionIndex < _questions.length) {
      print('We have more questions');
    } else {
      print('no more questions');
    }
  }

  void _resetQuiz() {
    setState(() {
      this._questionIndex = 0;
      this._totalScore = 0;
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('My First App'),
        ),
        body: this._questionIndex < _questions.length
            ? Quiz(
                questions: this._questions,
                questionIndex: this._questionIndex,
                answerQuestion: this._answerQuestion,
              )
            : Result(
                totalScore: this._totalScore,
                resetQuiz: this._resetQuiz,
              ),
      ),
    );
  }
}
