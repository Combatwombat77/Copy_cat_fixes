import 'package:flutter/material.dart';

class Strengths extends StatefulWidget{
  Strengths({this.title, this.strengths});
  final Widget title, strengths;
  @override
  StrengthsState createState() => new StrengthsState();
}

class StrengthsState extends State<Strengths>{
  @override
  Widget build(BuildContext context){
    return Scaffold(
        appBar: new AppBar( 
          title: Text ('Strengths')
          ),
        body: new Column(
          children: <Widget>[
            new TextField(
              decoration: new InputDecoration.collapsed(
                hintText: "Add your strengths..."
              ),

            )
          ],
        )
    );
  }
}