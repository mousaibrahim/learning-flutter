import 'package:flutter/material.dart';


class Answer extends StatelessWidget {


  final String label;
  final Function answerFunction;


  Answer(this.label, this.answerFunction);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      child: RaisedButton(
        textColor: Colors.white,
        color: Colors.blue,
        child: Text(label,
        style: TextStyle(
          fontSize: 20
        ),
        ),
        onPressed: answerFunction,
      ),
    );
  }
}
