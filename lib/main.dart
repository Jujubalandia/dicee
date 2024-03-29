import 'package:flutter/material.dart';
import 'dart:math';

void main() {
  return runApp(
    MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.red,
        appBar: AppBar(
          title: Text('Dicee'),
          backgroundColor: Colors.red,
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
  int bothDiceNumber = 1;
  static const int max = 6;
  
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Row(
        children: <Widget>[
          Expanded(
            child: Padding(
              padding: const EdgeInsets.all(16.0),
              child: FlatButton(                
                child: Image.asset('images/dice$bothDiceNumber.png'),
                onPressed: () {
                  setState(() {
                     setDiceNumber();
                  });                                   
                },
                
              ),
            ),
          ),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.all(16.0),
              child: FlatButton(
                child: Image.asset('images/dice$bothDiceNumber.png'),
                onPressed: () {
                  setState(() {
                    setDiceNumber();
                  });                  
                },
              ),
            ),
          ),
        ],
      ),
    );
  }

  void setDiceNumber() {
    bothDiceNumber = Random().nextInt(max) + 1;
  }
}