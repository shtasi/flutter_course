import 'package:flutter/material.dart';

import './quiz.dart';
import './result.dart';

void main() {
  runApp(TestApp());
}

class TestApp extends StatefulWidget {

  @override
  State<StatefulWidget> createState() {
    return _TestAppState();
  }
}

class _TestAppState extends State<TestApp> {
  static const questions = [
    'Зачем нужен закон Архимеда?',
    'Сердце корабля - это:',
    'А зачем вообще нужна подводная лодка?',
    'А что такое экипаж?',
    'Океан - это:',
    'Чтоб быстро всплыть, нужно отдать команду:'
  ];

  static const answers = [
    [
      { 'text': 'Чтобы всплыть.', 'type': 'holland'},
      { 'text': 'Чтобы пена в пиве была сверху, а не снизу.', 'type': 'yellow'},
      { 'text': 'Чтобы результат погружения в себя поднимал к небесам.', 'type': 'tibet'},
      { 'text': 'Чтоб. Его. Ик.', 'type': 'garden'},
    ],
    [
      { 'text': 'Гальюн. Потому что без него никак.', 'type': 'garden'},
      { 'text': 'Радиорубка. Там музыка и весь мир.', 'type': 'yellow'},
      { 'text': 'Силовая установка.', 'type': 'holland'},
      { 'text': 'Камбуз. Сначала обед, потом погружение. Торопиться-то куда?', 'type': 'tibet'},
    ],
    [
      { 'text': 'Чтобы незаметно и стремительно атаковать врага.', 'type': 'holland'},
      { 'text': 'В глубинах вод встречаются редкие рыбы. По-другому не поймать.', 'type': 'garden'},
      { 'text': 'А в хозяйстве всё пригодится.', 'type': 'yellow'},
      { 'text': 'В тесноте веселее. Ну, и ближе становишься к ближнему. Особенно когда выхода нет.', 'type': 'tibet'},
    ],
    [
      { 'text': 'Единомышленники.', 'type': 'tibet'},
      { 'text': 'Самый ненадёжный механизм подводной лодки.', 'type': 'holland'},
      { 'text': 'Братушки! Собутыльники! Весёлые ребята! Без них никак!', 'type': 'yellow'},
      { 'text': 'Рабочая сила.', 'type': 'garden'},
    ],
    [
      { 'text': 'Далеко. Отсюда не видно.', 'type': 'garden'},
      { 'text': 'Предатель. Но наплевать.', 'type': 'tibet'},
      { 'text': 'Чудо. Очень красиво.', 'type': 'yellow'},
      { 'text': 'Место приписки и работы.', 'type': 'holland'},
    ],
    [
      { 'text': 'Лягушек вон из камбуза!', 'type': 'tibet'},
      { 'text': 'Продуть цистерны главного балласта!', 'type': 'holland'},
      { 'text': 'Надуться! Икать! Всплываем!', 'type': 'yellow'},
      { 'text': 'Табань!', 'type': 'garden'},
    ],
  ];
  
  var _stepId = 0;
  var scores = [0, 0, 0, 0];

  void changeState(String type) {
    setState(() {
      if (_stepId < questions.length) {
        _stepId = _stepId + 1;
      }
      switch (type) {
        case 'holland': { scores[0]++; break; }
        case 'tibet': { scores[1]++; break; }
        case 'yellow': { scores[2]++; break; }
        case 'garden': { scores[3]++; break; }
      }
    });
  }

  void resetQuiz() {
    setState(() {
      _stepId = 0;
      scores = [0, 0, 0, 0];
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
          appBar: AppBar(
            title: Text('Какая вы поводная лодка?'),
            ),
          body: (_stepId < questions.length) ?
                  Quiz(questions[_stepId], answers[_stepId], changeState) : Result(scores, resetQuiz),
          ),
        );
  }
}
