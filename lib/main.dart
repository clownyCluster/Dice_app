import 'dart:math';

import 'package:flutter/material.dart';

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

// class DicePage extends StatelessWidget {

// }

class DicePage extends StatefulWidget {
  @override
  _DicePageState createState() => _DicePageState();
}

class _DicePageState extends State<DicePage> {
  int leftDice = Random().nextInt(6)+1;
  
  int rightDice = Random().nextInt(6)+1;
  void changeDiceFace() {
    setState(() {
      leftDice = Random().nextInt(6) + 1;
      rightDice = Random().nextInt(6) + 1;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Row(
        // mainAxisAlignment: MainAxisAlignment.center,
        // crossAxisAlignment: CrossAxisAlignment.center,

        children: [
          // SizedBox(width: 10,),
          Expanded(
            flex: 1, //Flex is set to 1 by default
            child: FlatButton(
              child: Image.asset('images/dice$leftDice.png'),
              onPressed: () {
                changeDiceFace();
              },
            ),
          ),
          // SizedBox(width: 10,),
          Expanded(
            flex: 1,
            child: FlatButton(
              child: Image(
                image: AssetImage('images/dice$rightDice.png'),
              ),
              onPressed: () {
                changeDiceFace();
              },
            ),
          ),
          // SizedBox(width: 10,),
        ],
      ),
    );
  }
}
