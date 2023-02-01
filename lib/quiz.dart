import 'package:flutter/material.dart';
import './question.dart';
import './answer.dart';

class Quiz extends StatelessWidget {
  final List<Map<String, Object>> questions;
  final int questionIndex;
  final Function answerQuestion;
  Quiz({
    @required this.questions,
    @required this.answerQuestion,
    @required this.questionIndex,
  }); //@required is decorator from flutter
  @override
  Widget build(BuildContext context) {
    return Column(
      //main file copy to here

      children: [
        //Text(questions.elementAt(0)), //rather than writing text we copy from upper (questions )variable using variable name.elementAt (index number)
        //or we use questions[0]
        Question(
          questions[questionIndex]['questionText'] as String,
        ),
//Qustion ek widget hai jo question.dart me banaye ha i
        // ([]) matlab jab ek question answer hojayega to automatically second aayega question
        ...(questions[questionIndex]['answers'] as List<Map<String, Object>>)
            .map((answer) {
          return Answer(
              () => answerQuestion(answer['score']),
              answer['text']
                  as String); //this send instruction to answer.dart file
          //hamlog _answerquestion return kare ge chuki click karne pe next aaye
        }).toList() //after perorming all operation we put .tolist it converts the value map and gives the list

        /*Answer(_answerQuestion),
            Answer(_answerQuestion),
            Answer(_answerQuestion),
            Answer(_answerQuestion),*/
// another way to use buttom
        /*
            ElevatedButton(
              child: Text('Answer1'),
              onPressed: answerQuestion, //le jayega uper wale function me
            ),
            ElevatedButton(
              child: Text('Answer2'),
              onPressed: answerQuestion,
            ),
            ElevatedButton(
              child: Text('Answer3'),
              onPressed: () =>
                  print('Answer 2 chosen!'), //this is ananomeous function
            ),
            ElevatedButton(
              child: Text('Answer4'),
              onPressed: answerQuestion,
            ),*/
      ],
    );
  }
}
