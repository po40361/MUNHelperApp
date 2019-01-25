import 'package:flutter/material.dart';
import 'package:helloflutter/src/colors.dart';

class TrollingGuidePage extends StatefulWidget{
  @override
  State<StatefulWidget> createState(){
  return TrollingGuidePageState();

  }
}

class TrollingGuidePageState extends State<TrollingGuidePage>{
  @override
  Widget build (BuildContext context){
    return Scaffold(
    backgroundColor: bgColor,
    appBar: AppBar(
      titleSpacing: 5.0,
      title: 
      Center(
              child: Text(
          'In-Conference Help',
          style: TextStyle(
            color: textColor,
            fontSize: 27.0
          ), 
        ),
      ),
      backgroundColor: barColor
    ),
  );
  }
}

class TrollingGuideButton extends StatelessWidget{
  
  final double width;
  final double height;
  final String name;
  
  //final double height;
  const TrollingGuideButton(this.width, this.height, this.name);

  @override
  Widget build(BuildContext context){
  return Container(
        
        padding: const EdgeInsets.all(15.0),
        child: RawMaterialButton(
        constraints: BoxConstraints(minWidth: width, minHeight: height),
        fillColor: buttonColor,
        //elevation: 0.0,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(20)
        ),
        child: 
        Center(
            child: Text(name,
              style: TextStyle(
              color: textColor,
              fontSize: 25.0
            )
          ),
        ),
        onPressed: (){
          }, 
        )
      );
    }
}