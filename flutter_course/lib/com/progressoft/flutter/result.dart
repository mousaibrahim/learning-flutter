import 'package:flutter/material.dart';

class Result extends StatelessWidget {

  final int score;
  final Function resetFunction;

  Result(this.score,this.resetFunction);

  String get resultPhrase{
    var resultText = 'You did it!';
    if(score ==100){
      resultText='أحسنت اجاباتك جميعها صحيحة';
    }else{
      resultText='للأسف فشلت في الاختبار';
    }
    return resultText;
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: [
          Text(resultPhrase
          , style: TextStyle(
              fontSize: 20.0,
              fontWeight: FontWeight.bold,
            ), textAlign: TextAlign.center,),
FlatButton(
  child: Text('حاول مرة أخرى', style:
    TextStyle(fontSize: 15.0),), onPressed: resetFunction,
  textColor: Colors.green,
)
        ],
      ),
    );
  }
}
