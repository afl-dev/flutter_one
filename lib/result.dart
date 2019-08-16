import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Result extends StatelessWidget {
  final int resultScore;
  final Function resetScore;

  Result(this.resultScore, this.resetScore);

  String get resultGet {
    String resultText;
    if (resultScore <= 8) {
      resultText = "Вы потрясающий!";
    } else if (8 < resultScore && resultScore <= 12) {
      resultText = "Хорошо справились!";
    } else if (12 < resultScore && resultScore <= 16) {
      resultText = "Что то пошло не так!";
    } else {
      resultText = "Вы плохой человек...";
    }
    return resultText;
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: <Widget>[
          Text(
            resultGet,
            style: TextStyle(fontSize: 46, fontWeight: FontWeight.bold),
            textAlign: TextAlign.center,
          ),
          FlatButton(

            child: Text('Перезапустить опрос'),
            onPressed: resetScore,
          )
        ],
      ),
    );
  }
}
