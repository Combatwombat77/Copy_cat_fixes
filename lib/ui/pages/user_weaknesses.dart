import 'package:flutter/material.dart';

class Weak extends StatefulWidget{
  Weak({this.title, this.strengths});
  final Widget title, strengths;
  @override
  WeakState createState() => new WeakState();
}

class WeakState extends State<Weak>{
  @override
  Widget build(BuildContext context){
    return new MaterialApp(
      home: new Scaffold(
        appBar: new AppBar( 
          title: Text('Weaknesses')),
        body: new Column(
          children: <Widget>[
            new TextField(
              decoration: new InputDecoration.collapsed(
                hintText: "Add your strengths..."
              ),

            )
          ],
        )
      )
    );
  }
}