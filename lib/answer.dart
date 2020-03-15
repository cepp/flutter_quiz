import 'package:flutter/material.dart';

class Answer extends StatelessWidget {

  final String _buttonText;
  final Function _answerQuestion;

  Answer(this._buttonText, this._answerQuestion);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      child: RaisedButton(
        color: Colors.blue,
        textColor: Colors.white,
        child: Text(this._buttonText),
        onPressed: this._answerQuestion,
      ),
    );
  }
}
