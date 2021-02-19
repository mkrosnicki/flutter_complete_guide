import 'package:flutter/material.dart';
import 'package:flutter_complete_guide/answer.dart';
import './question.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {

  @override
  State<StatefulWidget> createState() {
    return _MyAppState();
  }
}

class _MyAppState extends State<MyApp> {

  var _questionIndex = 0;

  void _answerQuestion() {
    setState(() {
      print("Answer chosen!");
      _questionIndex++;
      print(_questionIndex);
    });
  }

  @override
  Widget build(BuildContext context) {
    var questions = [
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
    // Scaffold() -> default main page
    return MaterialApp(
        home: Scaffold(
      appBar: AppBar(title: Text('My First App')),
      body: Column(
        children: [
          Question(questions[_questionIndex]['questionText']),
          ...(questions[_questionIndex]['answers'] as List<String>).map((answer) {
            return Answer(answer, _answerQuestion);
          }).toList(),
        ],
      ),
    ));
  }


}
