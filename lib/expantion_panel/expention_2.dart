import 'package:flutter/material.dart';

class expantion extends StatelessWidget {
  const expantion({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
    home: expan_widget(),
    );
  }
}

class expan_widget extends StatefulWidget {
  const expan_widget({ Key? key }) : super(key: key);

  @override
  State<expan_widget> createState() => _expan_widgetState();
}

class _expan_widgetState extends State<expan_widget> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      
      body: ExpansionPanelList(
  expansionCallback: (int index, bool isExpanded) {},
  children: [
    ExpansionPanel(
      headerBuilder: (BuildContext context, bool isExpanded) {
        return ListTile(
          title: Text('Item 1'),
        );
      },
      body: ListTile(
        title: Text('Item 1 child'),
        subtitle: Text('Details goes here'),
      ),
      isExpanded: true,
    ),
    ExpansionPanel(
      headerBuilder: (BuildContext context, bool isExpanded) {
        return ListTile(
          title: Text('Item 2'),
        );
      },
      body: ListTile(
        title: Text('Item 2 child'),
        subtitle: Text('Details goes here'),
      ),
      isExpanded: false,
    ),
  ],
),
    );
  }
}