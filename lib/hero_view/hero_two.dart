import 'package:flutter/material.dart';

class heroScreen2 extends StatelessWidget {
  const heroScreen2({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: screen_two(),
    );
  }
}

class screen_two extends StatefulWidget {
  const screen_two({ Key? key }) : super(key: key);

  @override
  State<screen_two> createState() => _screen_twoState();
}

class _screen_twoState extends State<screen_two> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Container(
          decoration: BoxDecoration(
              color: Colors.grey[350],
              borderRadius: BorderRadius.circular(15.0),
              border: Border.all(color: Colors.green, width: 5.0)),
          height: 310,
          width: 410,
          child: GestureDetector(
            child: Hero(
              tag: "Mehedi",
              child: GridView.count(
                crossAxisCount: 3,
                children: [
                  Icon(Icons.add_a_photo, size: 130.0),
                  Icon(Icons.favorite, size: 130.0),
                  Icon(Icons.mail, size: 130.0),
                  Icon(Icons.face, size: 130.0),
                ],
              ),
            ),
           
          ),
        ),
      ),
    );
  }
}