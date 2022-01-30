import 'package:flutter/material.dart';
import 'package:flutter_complete_guide/question.dart';

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
            RaisedButton(
              child: Text("Answer 1") ,
              onPressed: () => {
                answerQuestions()
              }
            ),
            RaisedButton(
              child: Text("Answer 2") ,
              onPressed: () => {
                answerQuestions()
              }
            ),
            RaisedButton(
              child: Text("Answer 3") ,
              onPressed: () => {
                answerQuestions()
              }
            ),
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