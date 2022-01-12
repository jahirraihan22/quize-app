import 'package:flutter/material.dart';

class Result extends StatelessWidget {
  final int resultScore;
  Result(this.resultScore);
  String get resultMsg {
    var resultTxt = 'You did it!';
    return resultTxt;
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text(
        resultMsg,
        style: TextStyle(
          fontSize: 36,
          fontWeight: FontWeight.bold,
        ),
      ),
    );
  }
}
