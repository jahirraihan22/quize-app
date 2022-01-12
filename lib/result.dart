import 'package:flutter/material.dart';

class Result extends StatelessWidget {
  final int resultScore;
  final VoidCallback resetHandler;
  Result(
    this.resultScore,
    this.resetHandler,
  );
  String get resultMsg {
    var resultTxt = 'You did it!';
    return resultTxt;
  }

  @override
  Widget build(BuildContext context) {
    return Center(
        child: Column(
      children: <Widget>[
        Text(
          resultMsg,
          style: TextStyle(
            fontSize: 36,
            fontWeight: FontWeight.bold,
          ),
        ),
        FlatButton(
          child: Text('Restart'),
          onPressed: resetHandler,
        ),
      ],
    ));
  }
}
