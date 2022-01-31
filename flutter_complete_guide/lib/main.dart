import 'package:flutter/material.dart';
import 'package:flutter_complete_guide/question.dart';
import 'package:flutter_complete_guide/answer.dart';
import 'package:flutter_complete_guide/quiz.dart';
import 'package:flutter_complete_guide/result.dart';

// void main(){
//   runApp(MyApp());
// }


void main() => runApp(MyApp());

class MyApp extends StatefulWidget{
  @override
  State<StatefulWidget> createState(){
    return MyAppState();
  }
}

class MyAppState extends State<MyApp>{
  
  var questionIndex = 0;
  var questions = [
    {
      "questionText": "What's your favourite color?",
      'answers': ['Black', 'Red', 'Green', 'White'],
    },
    {
      "questionText": "What's your favourite animal?",
      'answers': ['Rabbit', 'Snake', 'Elephant', 'Lion'],
    },
    {
      "questionText": "What's your favourite instructors?",
      'answers': ['Max1', 'Max2', 'Max3', 'Max4'],
    },

  ];
  
  @override
  Widget build(BuildContext context){

    return MaterialApp(
      home: Scaffold(
          appBar: AppBar(
            title: Text ('My First App'),
          ), 
          body: 
            questionIndex < questions.length ?
              Quiz(questions: questions, questionIndex: questionIndex, answerQuestions: answerQuestions)
              :
              Result()
          
          ,
      ),
    );
  }

  void answerQuestions(){
    if(questionIndex >= questions.length){
      return;
    }
    setState(() {
      questionIndex = questionIndex + 1;
    });
    print("Answer ${questionIndex}");

  }
}