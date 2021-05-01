import 'package:flutter/material.dart';
import 'dart:math';

void main() {
  return runApp(
    MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.red[400],
        appBar: AppBar(
          title: Text('Dicee'),
          backgroundColor: Colors.red,
          centerTitle: true,
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
  int leftDiceNumber = 3;
  int rightDiceNumber = 6;

  void changeDices() {
    leftDiceNumber = Random().nextInt(6) + 1;
    rightDiceNumber = Random().nextInt(6) + 1;
  }

  @override
  Widget build(BuildContext context) {
    return Column(mainAxisAlignment: MainAxisAlignment.center, children: [
      Row(children: [
        Expanded(
          child: Padding(
            padding: const EdgeInsets.all(16.0),
            child: Image.asset('images/dice$leftDiceNumber.png'),
          ),
        ),
        Expanded(
          child: Padding(
            padding: const EdgeInsets.all(16.0),
            child: Image.asset('images/dice$rightDiceNumber.png'),
          ),
        ),
      ]),
      SizedBox(height: 50.0),
      Container(
        child: TextButton(
          onPressed: () {
            setState(() {
              changeDices();
            });
          },
          child: Text('Roll dicee'),
          style: TextButton.styleFrom(
              primary: Colors.red,
              padding: EdgeInsets.all(20.0),
              backgroundColor: Colors.white70,
              textStyle: TextStyle(
                fontSize: 25.0,
                letterSpacing: 6.0,
                fontWeight: FontWeight.bold,
              )),
        ),
      )
    ]);
  }
}
