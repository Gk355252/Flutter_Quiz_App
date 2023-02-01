import 'package:flutter/material.dart';

import './quiz.dart';
import './question.dart';
import './result.dart';

class Answer extends StatelessWidget {
  final VoidCallback selectHandler;
  final String answertext; //store main answer in answertext file here
  Answer(this.selectHandler,
      this.answertext); //same selecthandler is to pass in this argument

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      child: ElevatedButton(
        style: ButtonStyle(
          //backgroundColor: MaterialStateProperty.all(Colors.white),
          backgroundColor: MaterialStateProperty.all(Colors.blue),

          //foregroundColor: MaterialStateProperty.all(Colors.white),
        ),
        child: Text(answertext),
        onPressed: selectHandler,
      ),
    );
  }
}
