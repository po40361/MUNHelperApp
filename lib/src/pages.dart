import 'package:flutter/material.dart';
import 'colors.dart';


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
        'MUN Resolution Help',
        style: TextStyle(
          color: textColor,
          fontSize: 27.0
        ), 
      ),
      backgroundColor: barColor
    ),
    body: 
        ListView(
          scrollDirection: Axis.vertical,
          padding: const EdgeInsets.all(35.0),
          children: [
            Container(
            alignment: Alignment(0, -0.93),
            padding: EdgeInsets.all(8.0),
            child: Text('Select a Committee',
            style: TextStyle(fontSize: 35.0,
              color: textColor),
            )),
            SelectCommitteeButton(500.0, 100.0, 'Security Council'),
            SelectCommitteeButton(500.0, 100.0, 'Human Rights Council'),
            SelectCommitteeButton(500.0, 100.0, 'General Assembly'),
            SelectCommitteeButton(500.0, 100.0, 'ECOSOC'),
            SelectCommitteeButton(500.0, 100.0, 'Disarmament')
          ]
        ),
    );
  }
}



class InConferenceHelpPage extends StatefulWidget{
  @override
  State<StatefulWidget> createState(){
  return InConferenceHelpPageState();

  }
}

class InConferenceHelpPageState extends State<InConferenceHelpPage>{
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


class SelectCommitteeButton extends StatelessWidget{
  
  final double width;
  final double height;
  final String name;
  
  //final double height;
  const SelectCommitteeButton(this.width, this.height, this.name);

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