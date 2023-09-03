import 'package:flutter/material.dart';

class mediaQ extends StatelessWidget {
  const mediaQ({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: mediaQuary_widget(),
    );
  }
}

class mediaQuary_widget extends StatefulWidget {
  const mediaQuary_widget({ Key? key }) : super(key: key);

  @override
  State<mediaQuary_widget> createState() => _mediaQuary_widgetState();
}

class _mediaQuary_widgetState extends State<mediaQuary_widget> {
  @override
  Widget build(BuildContext context) {
    var orientation = MediaQuery.of(context).orientation;
    var Size = MediaQuery.of(context).size;
    var height = Size.height;
    var width = Size.width;
    return Scaffold(
      body: orientation == Orientation.portrait?Container(
        color: Colors.blue[400],
        height: height/4,
        width: width/4,
      ) : Container(
        height: Size.height/3,
        width: Size.width/3,
        color: Colors.red[400],
      ),
    );
  }
}


// This is another Design of Media Query.

class mediaQuer extends StatefulWidget {
  const mediaQuer({ Key? key }) : super(key: key);

  @override
  State<mediaQuer> createState() => _mediaQuerState();
}

class _mediaQuerState extends State<mediaQuer> {
  @override
  Widget build(BuildContext context) {
    var Size = MediaQuery.of(context).size;
    var height = Size.height;
    var width = Size.width;
    return Scaffold(
      body: Container(
        height: Size.height/3,
        width: Size.width/3,
        color: Colors.red[400],
      ),
    );
  }
}