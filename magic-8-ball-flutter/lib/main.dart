import 'package:flutter/material.dart';
import 'dart:math';
void main() => runApp(
      MaterialApp(
        home: Scaffold(
          appBar: AppBar(title: Center(
            child: Text('Magic Ball',style: TextStyle(fontWeight: FontWeight.bold),
            ),
          ),
            backgroundColor: Colors.teal,
          ),
          body:magicBox() ,
          backgroundColor: Colors.blueGrey,
          )
        ),
    );

class magicBox extends StatefulWidget {
  @override
  _magicBoxState createState() => _magicBoxState();
}

class _magicBoxState extends State<magicBox> {
  int box=5;

  @override
  Widget build(BuildContext context) {
    return  Row (
      children: <Widget>[
        Expanded(
          child:
        FlatButton(onPressed:(){setState((){ box=Random().nextInt(5)+1; },);
        },
          child: Center(
            child: Image(image: AssetImage('images/ball$box.png'),
            ),
          ),
        ),
        ),
      ],
    );
  }
}