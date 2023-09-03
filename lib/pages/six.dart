import 'package:flutter/material.dart';

class page_6 extends StatelessWidget {
  const page_6({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: six_page(),
    );
  }
}

class six_page extends StatefulWidget {
  const six_page({ Key? key }) : super(key: key);

  @override
  State<six_page> createState() => _six_pageState();
}

class _six_pageState extends State<six_page> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Text(
          "This is Page Number Six",
          style: TextStyle(fontWeight: FontWeight.bold),
        ),),
    );
  }
}