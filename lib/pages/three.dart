import 'package:flutter/material.dart';

class page_3 extends StatelessWidget {
  const page_3({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: three_page(),
    );
  }
}

class three_page extends StatefulWidget {
  const three_page({ Key? key }) : super(key: key);

  @override
  State<three_page> createState() => _three_pageState();
}

class _three_pageState extends State<three_page> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Text(
          "This is Page Number Three",
          style: TextStyle(fontWeight: FontWeight.bold),
        ),),
    );
  }
}