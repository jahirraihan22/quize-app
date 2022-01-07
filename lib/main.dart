import 'package:flutter/material.dart';

void main() => runApp(QuizApp());

class QuizApp extends StatelessWidget {
  var questionIndex = 0;
  void aswerQuestion() {
    questionIndex += 1;
    print("Answer chosen");
  }

  @override
  Widget build(BuildContext context) {
    var questions = [
      'What\'s your favorite color?',
      'What\'s your favorite animal?',
      'What\'s your favorite place?',
    ];
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('My First App'),
        ),
        body: Column(
          children: [
            Text(
              // questions.elementAt(0),
              questions[questionIndex],
            ),
            RaisedButton(
              child: Text('Answer 1'),
              onPressed: () {
                aswerQuestion();
              },
            ),
            RaisedButton(
              child: Text('Answer 2'),
              onPressed: () => aswerQuestion(),
            ),
            RaisedButton(
              child: Text('Answer 3'),
              onPressed: aswerQuestion,
            ),
          ],
        ),
      ),
    );
  }
}
