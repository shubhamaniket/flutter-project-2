import 'dart:math';

import 'package:flutter/material.dart';

void main() => runApp(MaterialApp(
  home: Scaffold(
    backgroundColor: Colors.red,
    appBar: AppBar(
      title: Center(child:Text('Dicee')),
      backgroundColor: Colors.red
    ),
    body: DicePage(),
  ),
));

class DicePage extends StatefulWidget {
  @override
  _DicePageState createState() => _DicePageState();
}

class _DicePageState extends State<DicePage> {
  int leftdicenumber = 1;
  int rightdicenumber = 1;
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Row(
      children: <Widget>[
        Expanded(
          child:Padding(
          padding: EdgeInsets.all(16.0),
          child:FlatButton(
            onPressed: (){
                setState(() {
                 leftdicenumber = Random().nextInt(6)+1; 
                });
            },
            child: Image(image: AssetImage('Images/dice$leftdicenumber.png'),),
          )
        )),
        
        Expanded(
          child:Padding(
            padding: EdgeInsets.all(16.0),
          child:FlatButton(
            onPressed: (){
              setState(() {
               rightdicenumber=Random().nextInt(6)+1; 
              });
            },
            child: Image(image: AssetImage('Images/dice$rightdicenumber.png'),),
          )
        ))
      ],
    ),
    );
  }
}
