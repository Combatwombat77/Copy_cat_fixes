import 'package:flutter/material.dart';

class Opps extends StatefulWidget{
  Opps({this.title, this.strengths});
  final Widget title, strengths;
  @override
  OppsState createState() => new OppsState();
}

class OppsState extends State<Opps>{
  @override
  Widget build(BuildContext context){
    return new MaterialApp(
      home: new Scaffold(
        appBar: new AppBar(
          title: Text('Opportunities')
        ),
        body: new Column(
          children: <Widget>[
            new TextField(
              decoration: new InputDecoration.collapsed(
                hintText: "Add your Opportunities..."
              ),
            )
          ],
        )
      )
    );
  }
}