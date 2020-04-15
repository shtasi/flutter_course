import 'package:flutter/material.dart';

class AnswerBtn extends StatelessWidget {
  final String answerText;
  final Function selectHandler;

  AnswerBtn(this.answerText, this.selectHandler);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      child: RaisedButton(
        color: Colors.blue,
        textColor: Colors.white,
        child: Text(answerText),
        onPressed: selectHandler
        )
    );
  }
}