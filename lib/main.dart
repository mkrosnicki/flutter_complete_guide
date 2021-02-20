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
      'answers': [
        {'text': 'White', 'score': 10},
        {'text': 'Blue', 'score': 20},
        {'text': 'Red', 'score': 30}]
    },
    {
      'questionText': 'What\'s your favourite animal?',
      'answers': [
        {'text': 'Dog', 'score': 30},
        {'text': 'Cat', 'score': 20},
        {'text': 'Lion', 'score': 10}
        ]
    },
    {
      'questionText': 'What\'s your favourite dish?',
      'answers': [
        {'text': 'Pizza', 'score': 30},
        {'text': 'Burger', 'score': 20},
        {'text': 'Spaghetti', 'score': 10}
        ]
    },
  ];

  var _questionIndex = 0;
  var _totalScore = 0;

  void _answerQuestion(int score) {
    setState(() {
      _questionIndex++;
    });
    _totalScore += score;
  }

  void _resetQuiz() {
    setState(() {
      _questionIndex = 0;
      _totalScore = 0;
    });
  }

  @override
  Widget build(BuildContext context) {
    // Scaffold() -> default main page
    return MaterialApp(
        home: Scaffold(
      appBar: AppBar(title: Text('My First App')),
      body: _questionIndex < _questions.length
          ? Quiz(answerQuestion: _answerQuestion, questions: _questions, questionIndex: _questionIndex,)
          : Result(_totalScore, _resetQuiz),
    ));
  }
}
