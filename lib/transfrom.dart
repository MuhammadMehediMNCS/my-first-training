import 'package:flutter/material.dart';
import 'dart:math';

class transfor extends StatelessWidget {
  const transfor({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: trans_widget(),
    );
  }
}

class trans_widget extends StatefulWidget {
  const trans_widget({ Key? key }) : super(key: key);

  @override
  State<trans_widget> createState() => _trans_widgetState();
}

class _trans_widgetState extends State<trans_widget> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Transform.rotate(angle: pi/4,
        child: Container(
          height: 400,
          width: 400,
          color: Colors.lightGreenAccent,
          child: const Center(child: Text("Transform Widget")),
        ),
      ),
    ));
  }
}