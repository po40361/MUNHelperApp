import 'package:flutter/material.dart';
import 'package:helloflutter/pages.dart';


final barColor = const Color(0xFF002451);
final bgColor = const Color(0xFF001C40);
final textColor = const Color(0xFFF4C724);

class App extends StatelessWidget{


Widget build(context){
  return MaterialApp(
  home: Scaffold(
    body: Center(
      child: ListView(
        scrollDirection: Axis.vertical,
        padding: const EdgeInsets.all(35.0),
        children: [
          MenuButton(500.0, 100.0, 'MUN Resolution Help'),
          MenuButton(500.0, 100.0, 'In-Conference Help')
          ]
        )
      ),

    backgroundColor: bgColor,
    appBar: AppBar(
      titleSpacing: 5.0,
      title: Text(
        'MUN Helper',
        style: TextStyle(
          color: textColor,
          fontSize: 27.0
        ), 
      ),
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
        fillColor: barColor,
        shape: const RoundedRectangleBorder(),
        child: Text(name,
        style: TextStyle(
          color: textColor,
          fontSize: 25.0
        )
        ),
        onPressed: (){
          Navigator.push(context, MaterialPageRoute(builder: (context) => ResoHelpPage()));
          }, 
        )
      );
    }
}


/*class ResoHelpPage extends MaterialPageRoute<void>(
  
  builder: (BuildContext context){

  }
  
) */