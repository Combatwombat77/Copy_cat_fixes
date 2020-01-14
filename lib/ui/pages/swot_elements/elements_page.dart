import 'package:flutter/material.dart';

enum AddMode{
  Editing,
  Adding
}

class Items extends StatelessWidget{

  final AddMode _addMode;

  Items(this._addMode, );

  
  @override 
  Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(
        title: Text(
          _addMode == AddMode.Adding ? 'Add Strength': 'Edit Strength'
      ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(40.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            TextField(
              decoration: InputDecoration(
                hintText: 'Strength'
              ),
            ),
            Container(height:8,),
            TextField(
              decoration: InputDecoration(
                hintText: 'Add a description'
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                _SwotButtons('Save', Colors.blue, (){
                    Navigator.pop(context);
                  }),
                Container(height: 16.0,),
                 _SwotButtons('Discard', Colors.grey, (){
                    Navigator.pop(context);
                  }),
                 Container(height: 16.0,),
                 _addMode == AddMode.Editing?
                  _SwotButtons('Delete', Colors.red, (){
                    Navigator.pop(context);
                  }): Container( )  
            ],)
          ],
        )
      ),
    );
  }
}

class _SwotButtons extends StatelessWidget{

  final String _text;
  final Color _color;
  final Function _onPressed;

  _SwotButtons(this._text,this._color, this._onPressed);
 
  @override 
  Widget build(BuildContext context){
    return MaterialButton(
                  onPressed: _onPressed,
                  child: Text( _text,
                  style: TextStyle(color: Colors.white),
                  ),
                  height: 50,
                  minWidth:100,
                  color: _color,
                );
  }
}