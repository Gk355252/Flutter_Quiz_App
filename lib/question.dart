import 'dart:ui';

import 'package:flutter/material.dart';

class Question extends StatelessWidget {
  final String questiontext; //final says the value of string never change
  Question(this.questiontext);
  @override
  Widget build(BuildContext context) {
    //A Container class can be used to store one or more widgets and position them on the screen according to our convenience
    return Container(
      width: double.infinity,
      margin: EdgeInsets.all(10),
      child: Text(
        questiontext,
        style: TextStyle(fontSize: 28),
        textAlign: TextAlign.center, //
      ),
    );
  }
}
//to open enum we use 