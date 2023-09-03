import 'package:flutter/material.dart';

class page_5 extends StatelessWidget {
  const page_5({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: five_page(),
    );
  }
}

class five_page extends StatefulWidget {
  const five_page({ Key? key }) : super(key: key);

  @override
  State<five_page> createState() => _five_pageState();
}

class _five_pageState extends State<five_page> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Text(
          "This is Page Number Five",
          style: TextStyle(fontWeight: FontWeight.bold),
        ),),
    );
  }
}