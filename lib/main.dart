import 'package:flutter/material.dart';

void main() {
  runApp(MyQuizApp());
}

class MyQuizApp extends StatefulWidget{
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return MyQuizAppState();
  }
}

class MyQuizAppState extends State<MyQuizApp> {

  var index=0;

  var questions=[
    'What is your favourite color?',
    'cats or dogs',
    'summer or winter'
  ];

  void answerQuestion(){
    print('Answer chosen!!!');
    setState(() {
      index=index+1;
    });
    //index++;
  }
  @override
  build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Quiz App'),
        ),
        body: Column(
          children: [
            Text(questions[index]),
            RaisedButton(child: Text('Answer 1'), onPressed: ()=>print('AnswerOne Chosen !!')),
            RaisedButton(child: Text('Answer 1'), onPressed: (){
              print('Answer 2 chosen');
            }),
            RaisedButton(child: Text('Answer 1'), onPressed: answerQuestion),
            RaisedButton(child: Text('Answer 1'), onPressed: answerQuestion),
          ],
        ),
      ),
    );
  }
}
