import 'package:flutter/material.dart';

import './quiz.dart';
import './result.dart';

//import keyword is used to import info from another file and after / we have to write file name
void main() => runApp(
    MyApp()); //it is a function written by flutter team} //used to run the app

//void main() => runApp(Myapp()); another method to write

class MyApp extends StatefulWidget {
  //stateful widget is combination of two class
  //this class content can change
  //call state <...>
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return _MyAppState();
  }
}

class _MyAppState extends State<MyApp> {
  //list of string
// we are going to use map here
//here we can use const instead of var because question remains same it does not change
  final _questions = const [
    // we are going to use map here, maps are collection of key value pairs
    {
      'questionText': 'What\'s your favorite color?',
      'answers': [
        {'text': 'Black', 'score': 10},
        {'text': 'Red', 'score': 5},
        {'text': 'Green', 'score': 3},
        {'text': 'White', 'score': 1},
      ],
    },
    {
      'questionText': 'What\'s your favorite animal?',
      'answers': [
        {'text': 'Rabbit', 'score': 3},
        {'text': 'Snake', 'score': 11},
        {'text': 'Elephant', 'score': 5},
        {'text': 'Lion', 'score': 9},
      ],
    },
    {
      'questionText': 'Who\'s your favorite instructor?',
      'answers': [
        {'text': 'Max', 'score': 1},
        {'text': 'Max', 'score': 1},
        {'text': 'Max', 'score': 1},
        {'text': 'Max', 'score': 1},
      ],
    },
  ];
  //question = []; doesnot work if question is constant and it can be used if we use var with questions and const with []
  //to ensure the class can not be accessed from outside we use _ infront of class name i.e private
  //it belongs to upper class
  var _questionIndex = 0; //_ is used to private
  var _totalScore = 0;
  void _resetQuiz() {
    // it is method used to reset the quiz
    setState(() {
      _questionIndex = 0;
      _totalScore = 0;
    });
  }

  void _answerQuestion(int score) {
    _totalScore += score;
    setState(() {
      //agar question change karna ho ek option click karne ke badd
      _questionIndex = _questionIndex + 1;
    }); //it is a method to precise i.e provided by state class

    //print('question selected!');
    print(_questionIndex);
    if (_questionIndex < _questions.length) {
      print('We have more questions!');
    } else {
      print('No more questions!');
    }
  }

//we have to add method here i.e build
  @override
  Widget build(BuildContext context) {
//list of string
// we are going to use map here
//here we can use const instead of var because question remains same it does not change
    /*const questions = [
      // we are going to use map here, maps are collection of key value pairs
      {
        'questionText': 'what\'s is your favourite colour?',
        'answers': ['Black', 'red', 'green', 'blue'],
      },
      {
        'questionText': 'what\'s your favourite dish?',
        'answers': ['chowmein', 'pawbhaji', 'batatpuri', 'sewpuri'],
      },
      {
        'questionText': 'what\'s your favourite flower?',
        'answers': ['rose', 'jashmin', 'sunflower', 'lily'],
      },
    ];*/
    //question = []; doesnot work if question is constant and it can be used if we use var with questions and const with []
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('My First App'),
        ),
        body: _questionIndex < _questions.length
            ? Quiz(
                answerQuestion: _answerQuestion,
                questionIndex: _questionIndex,
                questions: _questions,
              )
            : Result(_totalScore, _resetQuiz), //list of widgets
      ),
    );
    //common and in arguments parts we put any things that usefull for app
  }
  //materialapp is not function it is class
}
