import 'package:copy_cat/ui/swot_home.dart';
import 'package:copy_cat/ui/utils/uidata.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

import '../dashboard.dart';

class SwotGrid extends StatelessWidget{
  
  Widget build(BuildContext context){
    return MaterialApp(
      home: Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: Icon(Icons.close),
          onPressed: (){
            Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => Dashboard())
            );
          },
        ),
        title: Text('SWOT ANALYSIS'),
        actions: <Widget>[
          IconButton(
            icon: Icon(Icons.done),
              onPressed: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) => Dashboard()));
              },
          )
        ],
      ),
      body: OrientationBuilder(builder: (context, orientaion){
        return GridView.count(     
        padding: const EdgeInsets.all(20.0),
        crossAxisSpacing: 10.0,
        crossAxisCount: 2,
        children: <Widget>[
          Card(
               elevation: 5.0,
               color: Colors.green,
               child: Text('Strengths'),
               ),
               Card(
               elevation: 10.0,
               color: Colors.blue,
               child: Text('Weaknesses'),
               ),
               Card(
               elevation: 5.0,
               color: Colors.orange,
               child: Text('Opportunities'),
               ),
               Card(
               elevation: 5.0,
               color: Colors.purple,
               child: Text('Threats'),
               ),
               
        ],
        );
      }
      )
      )
      );
      }
  }
   

