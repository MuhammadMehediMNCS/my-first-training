import 'package:flutter/material.dart';

class tolTip extends StatelessWidget {
  const tolTip({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: tool_widget(),
    );
  }
}

class tool_widget extends StatefulWidget {
  const tool_widget({ Key? key }) : super(key: key);

  @override
  State<tool_widget> createState() => _tool_widgetState();
}

class _tool_widgetState extends State<tool_widget> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          IconButton(onPressed: (){},
          tooltip: "Home",
          icon: Icon(Icons.home_outlined)),
          Tooltip(message: 'Welcome',
          child: Container(
            height: 300,
            width: 400,
            color: Colors.tealAccent,
          ),
          )
        ],
      ),
    );
  }
}