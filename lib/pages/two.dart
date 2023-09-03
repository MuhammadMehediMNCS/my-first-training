import 'package:flutter/material.dart';

class page_2 extends StatelessWidget {
  const page_2({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: two_page(),
    );
  }
}

class two_page extends StatefulWidget {
  const two_page({ Key? key }) : super(key: key);

  @override
  State<two_page> createState() => _two_pageState();
}

class _two_pageState extends State<two_page> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Text(
          "This is Page Number Two",
          style: TextStyle(fontWeight: FontWeight.bold),
        ),),
    );
  }
}