import 'package:flutter/material.dart';

class Threat extends StatefulWidget{
  Threat({this.title, this.strengths});
  final Widget title, strengths;
  @override
  ThreatState createState() => new ThreatState();
}

class ThreatState extends State<Threat>{
  @override
  Widget build(BuildContext context){
    return new MaterialApp(
      home: new Scaffold(
        appBar: new AppBar(
          title: Text('Threats') ),
        body: new Column(
          children: <Widget>[
            new TextField(
              decoration: new InputDecoration.collapsed(
                hintText: "Add your threats..."
              ),

            )
          ],
        )
      )
    );
  }
}