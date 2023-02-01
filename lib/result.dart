import 'package:flutter/material.dart';

class Result extends StatelessWidget {
  final int resultScore;
  final VoidCallback resetHandler;
  Result(this.resultScore, this.resetHandler);
  String get resultPhase {
    var resultText = 'You did it';
    if (resultScore <= 8) {
      resultText = 'You are innocent and awesome';
    } else if (resultScore <= 12) {
      resultText = 'Pretty likeable';
    } else if (resultScore <= 16) {
      resultText = 'You are ... strange?!';
    } else {
      resultText = 'You are soo bad';
    }

    return resultText;
  } // get can not take arguments

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: <Widget>[
          Text(
            resultPhase,
            style: TextStyle(fontSize: 36, fontWeight: FontWeight.bold),
            textAlign: TextAlign.center,
          ),
          TextButton(
            //old - flatbutton and new - textbutton
            child: Text('Restart Quiz!'),
            style: TextButton.styleFrom(primary: Colors.pink),
            onPressed: resetHandler,
          ),
        ],
      ),
    );
  }
}
