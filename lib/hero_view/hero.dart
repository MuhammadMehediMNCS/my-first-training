import 'package:flutter/material.dart';
import 'package:my_first_practice/hero_view/hero_two.dart';

class heroScreen1 extends StatelessWidget {
  const heroScreen1({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: screen_one(),
    );
  }
}

class screen_one extends StatefulWidget {
  const screen_one({Key? key}) : super(key: key);

  @override
  State<screen_one> createState() => _screen_oneState();
}

class _screen_oneState extends State<screen_one> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Container(
          decoration: BoxDecoration(
              color: Colors.grey[350],
              borderRadius: BorderRadius.circular(15.0),
              border: Border.all(color: Colors.green, width: 5.0)),
          height: 150,
          width: 200,
          child: GestureDetector(
            child: Hero(
              tag: "Mehedi",
              child: GridView.count(
                crossAxisCount: 3,
                children: const [
                  Icon(Icons.add_a_photo, size: 60.0),
                  Icon(Icons.favorite, size: 60.0),
                  Icon(Icons.mail, size: 60.0),
                  Icon(Icons.face, size: 60.0),
                ],
              ),
            ),
            onTap: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => const heroScreen2()));
            },
          ),
        ),
      ),
    );
  }
}
