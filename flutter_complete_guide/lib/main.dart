import 'package:flutter/material.dart';

// void main(){
//   runApp(MyApp());
// }


void main() => runApp(MyApp());

class MyApp extends StatelessWidget{
  @override
  Widget build(BuildContext context){

    var questions = [ "Question1 ", "QUestion 2", "Question 3"];

    return MaterialApp(
      home: Scaffold(
          appBar: AppBar(
            title: Text ('My First App'),
          ), 
          body: 
          
          Column(children : 
          [
            Text("Questions"),
            RaisedButton(child: Text("Answer 1") ,onPressed: answerQuestions),
            RaisedButton(child: Text("Answer 2") ,onPressed: answerQuestions),
            RaisedButton(child: Text("Answer 3") ,onPressed: answerQuestions),
          ],
          )
          
          ,
      ),
    );
  }

  void answerQuestions(){
    print("Answer 1");
  }
}