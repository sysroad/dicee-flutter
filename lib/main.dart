import 'package:flutter/material.dart';
import 'dart:math';

void main() {
  return runApp(
    MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.red[400],
        appBar: AppBar(
          title: Center(
            child: Text(
              'Dicee',
              style: TextStyle(
                color: Colors.red,
                fontSize: 32.0,
              ),
            ),
          ),
          backgroundColor: Colors.red[50],
        ),
        body: DicePage(),
      ),
    ),
  );
}

class DicePage extends StatefulWidget {
  @override
  _DicePageState createState() => _DicePageState();
}

class _DicePageState extends State<DicePage> {

  int leftDiceNumber = 1;
  int rightDiceNumber = 1;
  var rng = Random();

  void changeDice() {
    setState(() {
      leftDiceNumber = rng.nextInt(6) + 1;
      rightDiceNumber = rng.nextInt(6) + 1;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Row(
        children: <Widget>[
          Expanded(
            child: FlatButton(
              onPressed: () {
                changeDice();
              },
              child: Image.asset('images/dice$leftDiceNumber.png'),
            ),
          ),
          Expanded(
            child: FlatButton(
              onPressed: () {
                changeDice();
              },
              child: Image.asset('images/dice$rightDiceNumber.png'),
            ),
          ),
        ],
      ),
    );
  }
}