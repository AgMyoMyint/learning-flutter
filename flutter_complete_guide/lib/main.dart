import 'package:flutter/material.dart';
import 'package:flutter_complete_guide/question.dart';
import 'package:flutter_complete_guide/answer.dart';

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
  var questions = [ "Question1 ", "Question 2", "Question 3"];
  
  @override
  Widget build(BuildContext context){

    return MaterialApp(
      home: Scaffold(
          appBar: AppBar(
            title: Text ('My First App'),
          ), 
          body: 
          
          Column(children : 
          [
            Question(questions[questionIndex]),
            Answer("Answer 1",answerQuestions),
            Answer("Answer 2",answerQuestions),
            Answer("Answer 3",answerQuestions),
          ],
          )
          
          ,
      ),
    );
  }

  void answerQuestions(){
    setState(() {
      questionIndex = questionIndex + 1;
    });
    print("Answer ${questionIndex}");

  }
}