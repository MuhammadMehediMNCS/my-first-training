import 'package:flutter/material.dart';

class Card_widget extends StatelessWidget {
  const Card_widget({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Card Design',
      theme: ThemeData(
        primaryColor: Colors.blue.shade300
      ),
      home: card_shape(),
    );
  }
}

class card_shape extends StatefulWidget {
  const card_shape({ Key? key }) : super(key: key);

  @override
  State<card_shape> createState() => _card_shapeState();
}

class _card_shapeState extends State<card_shape> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Card(
            elevation: 8,
            color: Colors.white,
            shadowColor: Colors.green,
            margin: EdgeInsets.all(20),
            borderOnForeground: true,
            semanticContainer: true,
            shape: CircleBorder(side: BorderSide(width: 1, color: Colors.red)),
            // shape: OutlineInputBorder(
            //   borderRadius: BorderRadius.circular(10),
            //   borderSide: BorderSide(color: Colors.red)
            // ),
            // shape: BeveledRectangleBorder(
            //   borderRadius: BorderRadius.circular(15)
            // ),
            child: ListTile(
              title: Text("Flutter Developer"),
            ),
          ),
          Container(
            height: 200,
            width: 200,
            child: Card(
              child: ListTile(
                title: Text("Flutter Developer"),
              ),
              elevation: 8,
              shadowColor: Colors.green,
              margin: EdgeInsets.all(20),
            ),
          )
        ],
      ),
    );
  }
}