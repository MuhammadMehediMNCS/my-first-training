import 'package:flutter/material.dart';

class expaned_widget extends StatelessWidget {
  const expaned_widget({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: expanded_design(),
    );
  }
}

class expanded_design extends StatefulWidget {
  const expanded_design({ Key? key }) : super(key: key);

  @override
  State<expanded_design> createState() => _expanded_designState();
}

class _expanded_designState extends State<expanded_design> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Expanded Widget"),
        centerTitle: true,
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.start,
        textDirection: TextDirection.rtl,
        verticalDirection: VerticalDirection.up,
        textBaseline: TextBaseline.alphabetic,
        children: [
          Expanded(
            flex: 2,
            child: Container(color: Colors.green.shade400,)),
          Expanded(
            flex: 1,
            child: Container(color: Colors.red.shade400,)),
          Expanded(
            flex: 2,
            child: Container(color: Colors.blue.shade400,)),
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.center,
            textDirection: TextDirection.rtl,
            textBaseline: TextBaseline.ideographic,
            verticalDirection: VerticalDirection.down,
            children: [

            ],
          )
        ],
      ),
    );
  }
}