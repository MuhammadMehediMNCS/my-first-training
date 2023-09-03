import 'package:flutter/material.dart';

class stackPlace extends StatelessWidget {
  const stackPlace({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: stackP(),
    );
  }
}

class Stack_Widget extends StatefulWidget {
  const Stack_Widget({ Key? key }) : super(key: key);

  @override
  State<Stack_Widget> createState() => _Stack_WidgetState();
}

class _Stack_WidgetState extends State<Stack_Widget> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        alignment: Alignment.center,
        children: [
          Container(
            height: 200,
            width: 300,
            color: Colors.green,
          ),
          const Positioned(
            left: 80,
            child: CircleAvatar(
            backgroundColor: Colors.red,
            radius: 60,
          ))
        ],
      ),
    );
  }
}


// This is another Design of Stack Position.

class stackP extends StatefulWidget {
  const stackP({ Key? key }) : super(key: key);

  @override
  State<stackP> createState() => _stackPState();
}

class _stackPState extends State<stackP> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        alignment: Alignment.bottomRight,
        fit: StackFit.expand,
        children: [
          Container(
            height: 250,
            width: 500,
            color: Colors.red,
          ),
          Container(
            padding: const EdgeInsets.all(20),
            margin: const EdgeInsets.fromLTRB(20, 20, 20, 20),
            height: 200,
            width: 400,
            color: Colors.yellow,
          ),
          Container(
            padding: const EdgeInsets.all(20),
            margin: const EdgeInsets.fromLTRB(30, 30, 30, 30),
            height: 100,
            width: 200,
            color: Colors.teal,
          )
        ],
      ),
    );
  }
}