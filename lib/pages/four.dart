import 'package:flutter/material.dart';

class page_4 extends StatelessWidget {
  const page_4({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: four_page(),
    );
  }
}

class four_page extends StatefulWidget {
  const four_page({ Key? key }) : super(key: key);

  @override
  State<four_page> createState() => _four_pageState();
}

class _four_pageState extends State<four_page> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Text(
          "This is Page Number Four",
          style: TextStyle(fontWeight: FontWeight.bold),
        ),),
    );
  }
}