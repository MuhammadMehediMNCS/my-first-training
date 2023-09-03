import 'package:flutter/material.dart';

import 'AlartDialogueBox.dart';
import 'DropDownMenu.dart';
import 'StackPosition.dart';


void main(List<String> args) {
  runApp(stackPlace());
}

class MyRevision extends StatelessWidget {
  const MyRevision({ Key? key }) : super(key: key);
  
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      
      home: Scaffold(
        appBar: AppBar(
          elevation: 20.0,
          backgroundColor: Colors.purple,
          leading: Icon(Icons.menu),
          iconTheme: IconThemeData(color: Colors.yellow),
          title: Text("This is a AppBar"),
          actions: [
            Icon(Icons.search),
            SizedBox(width: 20),
            Icon(Icons.more_vert)
          ],
          actionsIconTheme: IconThemeData(color: Colors.deepOrange),
          flexibleSpace: SafeArea(
              child: Icon(
            Icons.adb,
            color: Colors.white,
          )),
          bottom: PreferredSize(
              child: Container(), preferredSize: Size.fromHeight(30)),
          shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.all(Radius.circular(20))),
          brightness: Brightness.dark,
          centerTitle: true,
          titleSpacing: 0.00,
          titleTextStyle: TextStyle(color: Colors.black),
          textTheme: TextTheme(
            headline1: TextStyle(
              fontSize: 72.0,fontWeight: FontWeight.bold,
            ),
            headline6: TextStyle(
              fontSize: 36.0,
              fontStyle: FontStyle.italic
            ),
            bodyText2: TextStyle(fontSize: 14.0,
            fontFamily: 'Hind')
          ),
        ),
      ),
    );
  }
}