import 'package:flutter/material.dart';

import 'answer.dart';
import 'question.dart';

class Quiz extends StatelessWidget {

  final Function answerQuestion;
  final int index;
  final questions;


  Quiz({@required this.answerQuestion, @required this.index, @required this.questions});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Question(questions[index]['questionText']),
        ...(questions[index]['answers'] as List<Map<String,Object>>)
            .map((answer) {
          return new Answer(answer['text'],() => answerQuestion(answer['score']));
        }).toList(),
      ],
    );
  }
}
