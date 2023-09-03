import 'dart:html';

import 'package:flutter/material.dart';

class button_Design extends StatefulWidget {
  const button_Design({ Key? key }) : super(key: key);

  @override
  State<button_Design> createState() => _button_DesignState();
}

class _button_DesignState extends State<button_Design> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Row(
          children: [
            TextButton.icon(
                onPressed: () {},
                icon: Icon(Icons.camera_alt),
                label: Text("Take a Photo")),
            IconButton(
                onPressed: () {},
                icon: Icon(
                  Icons.call,
                  size: 40,
                )),
            TextButton(
                onPressed: () {}, child: Text("FlatButton")),
            TextButton(
              onPressed: () {},
              child: Row(
                children: [
                  Icon(Icons.play_arrow),
                  Text("PLAY"),
                ],
              ),
            ),
            Container(
              margin: EdgeInsets.all(25),
              child: OutlinedButton(
                onPressed: () {},
                child: Text("Outlined Button"),
              )
            )
          ],
        ),
      ),
    );
  }
}