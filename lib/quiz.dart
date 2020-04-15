import 'package:flutter/material.dart';

import './question.dart';
import './answer.dart';

class Quiz extends StatelessWidget {
  final String questionText;
  final List<Map<String, String>> answers;
  final Function selectHandler;

  Quiz(this.questionText, this.answers, this.selectHandler);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Question(questionText),
        ...(answers).map((answer) {
          return AnswerBtn(answer['text'], () => selectHandler(answer['type']));
          })
    ]);
  }
}
