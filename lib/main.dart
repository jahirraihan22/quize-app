import 'package:flutter/material.dart';
import './question.dart';

void main() => runApp(QuizApp());

class QuizApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _QuizAppState();
  }
}

class _QuizAppState extends State<QuizApp> {
  var _questionIndex = 0;
  void _aswerQuestion() {
    setState(() {
      _questionIndex += 1;
    });
    // if (_questionIndex > 2) {
    //   return;
    // }
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
          title: Text('My First App (video 40)'),
        ),
        body: Column(
          children: [
            Question(
              // questions.elementAt(0),
              questions[_questionIndex],
            ),
            RaisedButton(
              child: Text('Answer 1'),
              onPressed: () {
                _aswerQuestion();
              },
            ),
            RaisedButton(
              child: Text('Answer 2'),
              onPressed: () => _aswerQuestion(),
            ),
            RaisedButton(
              child: Text('Answer 3'),
              onPressed: _aswerQuestion,
            ),
          ],
        ),
      ),
    );
  }
}
