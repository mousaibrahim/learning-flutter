import 'package:flutter/material.dart';
import 'package:flutter_course/com/progressoft/flutter/quiz.dart';

import 'com/progressoft/flutter/result.dart';

void main() => runApp(MaterialApp(home: MyApp()));

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  int _index = 0;
  int score=0;

  final questions = [
    {
      'questionText': 'كم عدد الصلوات في اليوم؟',
      'answers': [{'text':'ثلاثة','score':0}, {'text':'اربعة','score':0}, {'text':'خمسة','score':30}]
    },
    {
      'questionText': 'مااسم نبي الاسلام؟',
      'answers': [{'text':'عيسى','score':0}, {'text':'موسى','score':0}, {'text':'محمد','score':30}]
    },
    {
      'questionText': 'في كم يوم خلق الله تعالى السماوات والارض؟',
      'answers': [{'text':'سبعة ايام','score':0}, {'text':'تسعة ايام','score':0}, {'text':'ستة ايام','score':40}]
    },
  ];

  void answerQuestion(int additionScore) {
    this.score+=additionScore;
    setState(() {
      _index++;
    });
  }

  void reset(){
    setState(() {
      _index=0;
      score=0;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Questions and Answers!'),
      ),
      body: _index < questions.length
          ? Quiz(answerQuestion: answerQuestion,index: _index,questions: questions)
          : Result(this.score,reset),
    );
  }
}
