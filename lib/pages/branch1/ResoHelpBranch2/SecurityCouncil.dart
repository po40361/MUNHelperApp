import 'package:flutter/material.dart';
import 'package:helloflutter/src/colors.dart';

class SecurityCouncilPage extends StatefulWidget{
  @override
  State<StatefulWidget> createState(){
  return SecurityCouncilPageState();
  }
}

class SecurityCouncilPageState extends State<SecurityCouncilPage>{
  @override
  Widget build (BuildContext context){
    return Scaffold(
    backgroundColor: bgColor,
    appBar: AppBar(
      titleSpacing: 5.0,
      title: Text(
        'Security Council',
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
          padding: const EdgeInsets.all(20.0),
          children:[
            Container(
              alignment: Alignment(0, -0.93),
              padding: EdgeInsets.all(5.0),
              child: 
                Wrap(
                  direction: Axis.horizontal,
                  //alignment: WrapAlignment.center,
                  children: <Widget>[ 
                      Placeholder(
                        color: Color(0xFFFFFFFF),
                        fallbackWidth: 300.0,
                        fallbackHeight: 300.0),
                      Center(
                        child: RichText(
                          text:TextSpan(
                          style: TextStyle(
                            color: Colors.black),
                          children: <TextSpan>[
                            TextSpan(
                              text:'About this committee:\n',
                              style: TextStyle(fontSize: 35.0)),
                              
                            TextSpan(
                              text:'\nThis is a sentence to see how a paragraph would look like in the current menu after clicking on a certain committee.',
                              style: TextStyle(fontSize: 17.0))
                              ]),
                          textAlign: TextAlign.left,
                        ),
                      ),
                        /*Text('Points of Information',
                          style: TextStyle(
                            fontSize: 40.0
                            font),
                          textAlign: TextAlign.center)*/

                    ]
                )
            )
          ]
        ),
    );
  }
}