import 'package:flutter/material.dart';
import 'package:my_first_practice/bottom_navigation.dart';

import 'alart_dialogue_box.dart';
import 'drop_down_menu.dart';
import 'stack_position.dart';


void main(List<String> args) {
  runApp(NavigationWidget());
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
          leading: const Icon(Icons.menu),
          iconTheme: const IconThemeData(color: Colors.yellow),
          title: const Text("This is a AppBar"),
          actions: const [
            Icon(Icons.search),
            SizedBox(width: 20),
            Icon(Icons.more_vert)
          ],
          actionsIconTheme: const IconThemeData(color: Colors.deepOrange),
          flexibleSpace: const SafeArea(
              child: Icon(
            Icons.adb,
            color: Colors.white,
          )),
          bottom: PreferredSize(
              child: Container(), preferredSize: Size.fromHeight(30)),
          shape: const  RoundedRectangleBorder(
              borderRadius: BorderRadius.all(Radius.circular(20))),
          brightness: Brightness.dark,
          centerTitle: true,
          titleSpacing: 0.00,
          titleTextStyle: const TextStyle(color: Colors.black),
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