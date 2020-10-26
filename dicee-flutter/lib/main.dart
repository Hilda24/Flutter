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
  int leftbutton=5;
  int rightbutton=3;
  @override
  Widget build(BuildContext context) {
void dice(){}
    return Center(
      child: Row(
        children: <Widget>[
          Expanded(
               child: FlatButton(onPressed:(){
                 setState(() {
                   leftbutton=Random().nextInt(6)+1;
                   rightbutton=Random().nextInt(6)+1;
                 });
              print('The left button got pressed'); },
              child:
              Image.asset('images/dice$leftbutton.png'),
            ),
          ),Expanded(
            child: FlatButton(onPressed:(){
              setState(() {
                rightbutton=Random().nextInt(6)+1;
                leftbutton=Random().nextInt(6)+1;
              });print('The right button got pressed ');},
              child:
              Image.asset('images/dice$rightbutton.png'),
            ),
          ),
        ],
      ),
    );
  }
}
