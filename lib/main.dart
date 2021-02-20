import 'package:flutter/material.dart';
import 'package:flutter_complete_guide/answer.dart';
import 'package:flutter_complete_guide/result.dart';

import './quiz.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _MyAppState();
  }
}

class _MyAppState extends State<MyApp> {
  final _questions = const [
    {
      'questionText': 'What\'s your favourite color?',
      'answers': ['White', 'Blue', 'Red']
    },
    {
      'questionText': 'What\'s your favourite animal?',
      'answers': ['Dog', 'Cat', 'Lion']
    },
    {
      'questionText': 'What\'s your favourite dish?',
      'answers': ['Pizza', 'Burger', 'Spaghetti']
    },
  ];

  var _questionIndex = 0;

  void _answerQuestion() {
    setState(() {
      print("Answer chosen!");
      _questionIndex++;
      print(_questionIndex);
    });
    if (_questionIndex < _questions.length) {
      print('We have more questions!');
    }
  }

  @override
  Widget build(BuildContext context) {
    // Scaffold() -> default main page
    return MaterialApp(
        home: Scaffold(
      appBar: AppBar(title: Text('My First App')),
      body: _questionIndex < _questions.length
          ? Quiz(answerQuestion: _answerQuestion, questions: _questions, questionIndex: _questionIndex,)
          : Result(),
    ));
  }
}
