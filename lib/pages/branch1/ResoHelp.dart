import 'package:flutter/material.dart';
import 'package:helloflutter/src/colors.dart';
import 'package:helloflutter/pages/branch1/ResoHelpBranch2/DisarmamentCommittees.dart';
import 'package:helloflutter/pages/branch1/ResoHelpBranch2/EnvironmentalCommittees.dart';
import 'package:helloflutter/pages/branch1/ResoHelpBranch2/GeneralAssembly.dart';
import 'package:helloflutter/pages/branch1/ResoHelpBranch2/SecurityCouncil.dart';
import 'package:helloflutter/pages/branch1/ResoHelpBranch2/HumanRightsCouncil.dart';


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
            SelectCommitteeButton(500.0, 100.0, 'Environmental Committees'),
            SelectCommitteeButton(500.0, 100.0, 'Disarmament Committees')
          ]
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
        Wrap(
          direction: Axis.horizontal,
          children: <Widget>[
            Text(name,
              style: TextStyle(
              color: textColor,
              fontSize: 25.0),
              textAlign: TextAlign.center,
          ),]
        ),
        onPressed: (){
          
          if (name == 'Security Council') 
          Navigator.push(context, MaterialPageRoute(builder: (context) => SecurityCouncilPage()));


          }, 
        )
      );
    }
}