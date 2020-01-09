import 'package:flutter/material.dart';

class _Strengths extends StatefulWidget{
  _Strengths({this.title, this.strengths});
  final Widget title, strengths;
  @override
  StrengthsState createState() => new StrengthsState();
}

class StrengthsState extends State<_Strengths>{
  @override
  Widget build(BuildContext context){
    return new MaterialApp(
      home: new Scaffold(
        appBar: new AppBar( title: widget.title,),
        body: new Column(
          children: <Widget>[
            widget.strengths,
            new TextField(
              decoration: new InputDecoration.collapsed(
                hintText: "Add your strengths"
              ),

            )
          ],
        )
      )
    );
  }
}