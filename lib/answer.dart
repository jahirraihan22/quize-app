import 'package:flutter/material.dart';
import './question.dart';

class Answer extends StatelessWidget {
  // to receive function
  final Function selectHandler;
  final String answerText;
  Answer(
    this.selectHandler,
    this.answerText,
  );
  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      margin: EdgeInsets.all(10),
      child: ElevatedButton(
        child: Text(answerText),
        onPressed: () => {selectHandler()},
      ),
    );
  }
}
