import 'package:flutter/material.dart';
import 'dart:math';

void main() {
  return runApp(
    MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.grey[700],
        appBar: AppBar(
          title: Text('Dicee'),
          backgroundColor: Colors.black,
        ),
        body: Diceful(),
      ),
    ),
  );
}

class Diceful extends StatefulWidget {
  @override
  _DicefulState createState() => _DicefulState();
}

class _DicefulState extends State<Diceful> {
  int leftDiceNumber = 1;
  int rightDiceNumber = 1;
  void random() {
    leftDiceNumber = Random().nextInt(6) + 1;
    rightDiceNumber = Random().nextInt(6) + 1;
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Row(
        children: <Widget>[
          Expanded(
              child: FlatButton(
            onPressed: () {
              setState(() {
                random();
              });
            },
            child: Image.asset('images/dice$leftDiceNumber.png'),
          )),
          Expanded(
              child: FlatButton(
            onPressed: () {
              setState(() {
                random();
              });
              ;
            },
            child: Image.asset('images/dice$rightDiceNumber.png'),
          )),
        ],
      ),
    );
  }
}
