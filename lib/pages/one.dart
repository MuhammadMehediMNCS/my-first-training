import 'package:flutter/material.dart';

class page_1 extends StatelessWidget {
  const page_1({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: one_page(),
    );
  }
}

class one_page extends StatefulWidget {
  const one_page({Key? key}) : super(key: key);

  @override
  State<one_page> createState() => _one_pageState();
}

class _one_pageState extends State<one_page> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Text(
          "This is Page Number One",
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
      ),
    );
  }
}
