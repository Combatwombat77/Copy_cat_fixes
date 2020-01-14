import 'package:copy_cat/ui/pages/swot_elements/elements_page.dart';

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
          title: Text ('Strengths'),
          actions: <Widget>[
          IconButton(
            icon: Icon(Icons.done),
            onPressed: () {

            },
          ),]),
        body: ListView.builder(
          itemBuilder:(context, index){ 
          return GestureDetector(
            onTap: (){
 Navigator.push(context, MaterialPageRoute(builder: (context) => Items(AddMode.Adding)));            },
            child: Card(
            child: Padding(
              padding: const EdgeInsets.only(top: 30.0,bottom: 30.0,left:30.0,right: 22.0),
              child:Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Text(
                  'Strengths',
                  style: TextStyle(fontSize: 25,
                  fontWeight: FontWeight.bold,
                  ),
                  ),
                Text('other things',
                style: TextStyle(
                  color: Colors.grey.shade600
                ),
                maxLines: 2,
                overflow: TextOverflow.ellipsis,
                ),
              ],
            ),
            ),
          ),);
          }
        ),      
        floatingActionButton:FloatingActionButton(
        onPressed: (){
          Navigator.push(context, MaterialPageRoute(builder: (context) => Items(AddMode.Adding)));
        },
        tooltip: 'Increment',
        child: Icon(Icons.add),
            ),
    );
  }
}

