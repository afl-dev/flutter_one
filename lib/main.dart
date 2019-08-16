import 'package:flutter/material.dart';
import 'package:flutter_one/result.dart';
import './quiz.dart';

/*void main(){
runApp(MyClass());
}*/

void main() => runApp(MyClass());

class MyClass extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return _MyClassState();
  }
}

class _MyClassState extends State<MyClass> {
  final _questions = const [
    {
      'questionText': 'Какой ваш любимый цвет?',
      'answers': [
        {'text': 'Красный', 'score': 3},
        {'text': 'Зеленый', 'score': 5},
        {'text': 'Синий', 'score': 2},
        {'text': 'Желтый', 'score': 1},
        {'text': 'Белый', 'score': 4}
      ]
    },
    {
      'questionText': 'Какое  у вас самое любимое животное?',
      'answers': [
        {'text': 'Корова', 'score': 4},
        {'text': 'Утка', 'score': 1},
        {'text': 'Крри', 'score': 6},
        {'text': 'Робот', 'score': 5},
        {'text': 'Гном', 'score': 2}
      ]
    },
    {
      'questionText': 'Кто будет президентом в 2050 году?',
      'answers': [
        {'text': 'Путин', 'score': 6},
        {'text': 'Медведев', 'score': 1},
        {'text': 'Гарри Поттер', 'score': 3},
        {'text': 'Бот', 'score': 4},
        {'text': 'Эльф', 'score': 2}
      ]
    },
  ];
  var _questionIndex = 0;
  var _totalScore = 0;

  void _resetQuiz(){
    setState(() {
      _questionIndex = 0;
      _totalScore = 0;
    });
  }

  void _answerQuestion(int score) {
    _totalScore += score;
    print(_totalScore);
    setState(() {
      _questionIndex++;
    });
    print(_questionIndex);
    if (_questionIndex < _questions.length) {
      print('We have more questions');
    } else {
      print('No more questions');
    }
  }

  @override
  Widget build(BuildContext context) {
    /* final names = ['Max', 'Manu', 'Julie'];
    final result = names.map((name) => Text(name)).toList();
    print(result);*/
    /* final questions = const [
      {
        'questionText': 'Какой ваш любимый цвет?',
        'answers': ['Red', 'Green', 'Blue', 'Yellow', 'White']
      },
      {
        'questionText': 'Какое  у вас самое любимое животное?',
        'answers': ['Корова', 'Утка', 'Прри', 'Бот', 'Гном']
      },
      {
        'questionText': 'Кто будет президентов в 2050 году?',
        'answers': ['Путин', 'Медведев', 'Гарри Поттер', 'Бот', 'Эльф']
      },
    ];
    var _questionIndex = 0;

    void _answerQuestion() {
      setState(() {
        _questionIndex++;
      });
      print(_questionIndex);
      if (_questionIndex < questions.length) {
        print('We have more questions');
      }
    }*/

    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("Мое первое flutter приложение"),
        ),
        body: _questionIndex < _questions.length
            ? Quiz(
                questions: _questions,
                answerQuestion: _answerQuestion,
                questionIndex: _questionIndex)
            : Result(_totalScore, _resetQuiz),
      ),
    );
  }
}
