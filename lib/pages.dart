import 'package:flutter/material.dart';

final barColor = const Color(0xFF002451);
final bgColor = const Color(0xFF001C40);
final textColor = const Color(0xFFF4C724);

class ResoHelpPage extends StatefulWidget{
  @override
  State<StatefulWidget> createState(){
  return ResoHelpPageState();

  }
}

class ResoHelpPageState extends State<ResoHelpPage>{
  @override
  Widget build (BuildContext context){
    return Scaffold(
    backgroundColor: bgColor,
    appBar: AppBar(
      titleSpacing: 5.0,
      title: Text(
        'Next Page',
        style: TextStyle(
          color: textColor,
          fontSize: 27.0
        ), 
      ),
      backgroundColor: barColor
    ),
  );
  }
}