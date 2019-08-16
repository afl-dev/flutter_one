import 'package:flutter/material.dart';

class Answer extends StatelessWidget {
  final Function selectHend;
  final String answerText;
  Answer(this.selectHend, this.answerText);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      child: RaisedButton(
        color: Colors.lightBlueAccent,
        child: Text(answerText),
        onPressed: selectHend,
      ),
    );
  }
}
