import 'package:flutter/material.dart';

class Result extends StatelessWidget {
  int totalScore;
  Function resetFunction;

  Result(this.totalScore, this.resetFunction);

  String get resultPhrase {
    return 'Your score is $totalScore';
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: [
          Text(
            resultPhrase,
            style: TextStyle(fontSize: 36, fontWeight: FontWeight.bold),
            textAlign: TextAlign.center,
          ),
          FlatButton(onPressed: resetFunction, child: Text('RestartQuiz'))
        ],
      ),
    );
  }
}
