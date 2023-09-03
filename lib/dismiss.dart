import 'package:flutter/material.dart';

class DismissMessage extends StatelessWidget {
  const DismissMessage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: dismiss_widget(),
    );
  }
}

class dismiss_widget extends StatefulWidget {
  const dismiss_widget({Key? key}) : super(key: key);

  @override
  State<dismiss_widget> createState() => _dismiss_widgetState();
}

class _dismiss_widgetState extends State<dismiss_widget> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: [
          Dismissible(
              key: ValueKey('M'),
              background: Container(
                color: Colors.amber[200],
                child: Icon(
                  Icons.delete_outline_outlined,
                  size: 35,
                ),
              ),
              secondaryBackground: Container(
                color: Colors.blueGrey[200],
                child: Icon(
                  Icons.delete_outline_outlined,
                  size: 35,
                ),
              ),
              child: ListTile(
                title: Text("Today is Your Birthday"),
                trailing: Icon(Icons.wb_twilight_sharp),
              )),
          Dismissible(
              key: ValueKey('M'),
              background: Container(
                color: Colors.amber[200],
                child: Icon(
                  Icons.delete_outline_outlined,
                  size: 35,
                ),
              ),
              secondaryBackground: Container(
                color: Colors.blueGrey[200],
                child: Icon(
                  Icons.delete_outline_outlined,
                  size: 35,
                ),
              ),
              child: ListTile(
                title: Text("Today is Your Birthday"),
                trailing: Icon(Icons.wb_twilight_sharp),
              )),
          Dismissible(
              key: ValueKey('M'),
              background: Container(
                color: Colors.amber[200],
                child: Icon(
                  Icons.delete_outline_outlined,
                  size: 35,
                ),
              ),
              secondaryBackground: Container(
                color: Colors.blueGrey[200],
                child: Icon(
                  Icons.delete_outline_outlined,
                  size: 35,
                ),
              ),
              child: ListTile(
                title: Text("Today is Your Birthday"),
                trailing: Icon(Icons.wb_twilight_sharp),
              )),
              Dismissible(
            key: ValueKey('M'),
            background: Container(
              color: Colors.amber[200],
              child: Icon(Icons.delete_outline_outlined, size: 35,),
            ),
            secondaryBackground: Container(
              color: Colors.blueGrey[200],
              child: Icon(Icons.delete_outline_outlined, size: 35,),
            ),
            child: ListTile(
              title: Text("Today is Your Birthday"),
              trailing: Icon(Icons.wb_twilight_sharp),
            )),
        ],
      ),
    );
  }
}
