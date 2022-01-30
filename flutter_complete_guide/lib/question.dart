import 'package:flutter/material.dart';

class Question extends StatelessWidget {

  String _questionText;

  Question(this._questionText);

  @override
  Widget build(BuildContext context) {
    // return Text(_questionText);

    return Container(
      width: double.infinity,
      margin: EdgeInsets.all(10),
      child:  Text(
                  _questionText,
                  style: TextStyle(fontSize: 28),
                  textAlign: TextAlign.center,
              ),
    );
  }
}