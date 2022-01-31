import 'package:flutter/material.dart';
import 'answer.dart';
import 'question.dart';

class Quiz extends StatelessWidget {

  List<Map<String,Object>> questions;
  int questionIndex;
  Function answerQuestions;

  Quiz({@required this.questions, @required this.questionIndex, @required this.answerQuestions});

  @override
  Widget build(BuildContext context) {
    return  Container(
              child : Column(
                              children : 
                                        [
                                          Question(questions[questionIndex]['questionText']),
                                          ...(questions[questionIndex]['answers'] as List<String>).map((answer){
                                            return Answer(answer, answerQuestions);
                                          }).toList()
                                        ]
                            )
            );
  }
}