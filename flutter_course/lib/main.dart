import 'package:flutter/material.dart';

import './com/progressoft/flutter/question.dart';
import 'com/progressoft/flutter/answer.dart';

void main() => runApp(MaterialApp(home: MyApp()));

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  int _index = 0;

  var questions = [
    {
      'questionText': 'What is your favorite color?',
      'answers': ['Red', 'Orange', 'Green']
    },
    {
      'questionText': 'What is your favorite animal?',
      'answers': ['Cat', 'Dog', 'Dragon']
    },
    {
      'questionText': 'What is your favorite car?',
      'answers': ['GMC', 'BMW', 'KIA']
    },
  ];

  void answerQuestion() {
    setState(() {
      _index = _index < questions.length - 1 ? _index += 1 : 0;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Questions and Answers!'),
      ),
      body: Column(
        children: [
          Question(questions[_index]['questionText']),
          ...(questions[_index]['answers'] as List<String>)
          .map((answer) {
            return new Answer(answer, answerQuestion);
          }),
        ],
      ),
    );
  }
}
