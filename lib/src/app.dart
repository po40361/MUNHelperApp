import 'package:flutter/material.dart';
import 'package:helloflutter/src/pages.dart';
import 'colors.dart';

class App extends StatelessWidget{


Widget build(context){
  return MaterialApp(
  home: Scaffold(
    body: Center(
        child: Container(
        padding: const EdgeInsets.all(35.0),
        child: Column(
        //scrollDirection: Axis.vertical,
        children: [
          Icon(Icons.people,
          size: 220.0,),
          Container(
            alignment: Alignment(0, -0.2),
            padding: EdgeInsets.all(10.0),
            child: Text('Welcome to MUN Helper!',
            style: TextStyle(
              color: textColor,
              fontSize: 27.0,
              //fontStyle:
              )
            ),
          ),
          MenuButton(500.0, 100.0, 'MUN Resolution Help'),
          MenuButton(500.0, 100.0, 'In-Conference Help'),
          MenuButton(500.0, 100.0, 'Trolling Guide')
          ]
        )
      )
    ),

    backgroundColor: bgColor,
    appBar: AppBar(
      //elevation: 0.0,
      titleSpacing: 5.0,
      /*title: Text(
        'MUN Helper',
        style: TextStyle(
          color: textColor,
          fontSize: 27.0
        ), 
      ),*/
      backgroundColor: barColor
    ),
  )
);
}
}

class MenuButton extends StatelessWidget{
  
  final double width;
  final double height;
  final String name;
  
  //final double height;
  const MenuButton(this.width, this.height, this.name);

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
        child: Text(name,
        style: TextStyle(
          color: textColor,
          fontSize: 25.0
        )
        ),
        onPressed: (){
          if (name == 'MUN Resolution Help') 
          Navigator.push(context, MaterialPageRoute(builder: (context) => ResoHelpPage()));

          else if (name == 'In-Conference Help')
          Navigator.push(context, MaterialPageRoute(builder: (context) => InConferenceHelpPage()));


          }, 
        )
      );
    }
}


/*class ResoHelpPage extends MaterialPageRoute<void>(
  
  builder: (BuildContext context){

  }
  
) */