import 'package:flutter/material.dart';
import 'package:my_first_practice/ui_design/profile_page.dart';

class profile extends StatelessWidget {
  const profile({ Key? key }) : super(key: key);

  static final String title = 'User Profile';

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primaryColor: Colors.blue.shade300
      ),
      title: title,
      home: ProfilePage(),
    );
  }
}