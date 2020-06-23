import 'package:flutter/material.dart';

class Question extends StatelessWidget {

  final String questionText;
  Question(this.questionText);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(10.0),
      child: Container(
        width: double.infinity,
        child: Text(questionText,
        style: TextStyle(
          color: Colors.green,
          fontSize: 25,
        ),
        textAlign: TextAlign.center,
        ),
      ),
    );
  }
}
