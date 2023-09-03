import 'package:flutter/material.dart';

class expen_tile extends StatelessWidget {
  const expen_tile({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: ExPen(),
    );
  }
}

// This is the Design no One.

class expention_widget extends StatelessWidget {
  const expention_widget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          ExpansionTile(
            title: Text("Expantion One"),
            subtitle: Text("This is one subtitle"),
            leading: CircleAvatar(
              child: Icon(Icons.camera_alt_rounded),
            ),
            trailing: Icon(Icons.arrow_drop_down_outlined),
            children: [
              Container(
                  height: 200.0,
                  color: Colors.grey[300],
                  child: GridView.count(
                    crossAxisCount: 5,
                    crossAxisSpacing: 12.0,
                    mainAxisSpacing: 12.0,
                    children: [
                      Container(
                        height: 10.0,
                        width: 10.0,
                        color: Colors.indigo,
                      ),
                      Container(
                        height: 10.0,
                        width: 10.0,
                        color: Colors.deepOrange,
                      ),
                      Container(
                        height: 10.0,
                        width: 10.0,
                        color: Colors.brown,
                      ),
                      Container(
                        height: 10.0,
                        width: 10.0,
                        color: Colors.cyan,
                      ),
                      Container(
                        height: 10.0,
                        width: 10.0,
                        color: Colors.deepPurple,
                      ),
                      Container(
                        height: 10.0,
                        width: 10.0,
                        color: Colors.pink[300],
                      )
                    ],
                  ))
            ],
          ),
          ExpansionTile(
            title: Text("Expantion Two"),
            subtitle: Text("This is one subtitle"),
            leading: CircleAvatar(
              child: Icon(Icons.call_outlined),
            ),
            trailing: Icon(Icons.arrow_drop_down_outlined),
            children: [
              Container(
                  height: 200.0,
                  color: Colors.grey[300],
                  child: ListView(
                    children: [
                      ListTile(
                        leading: Icon(Icons.person),
                        trailing: Icon(Icons.sim_card),
                        title: Text("01742817738"),
                        subtitle: Text("Today"),
                      ),
                      ListTile(
                        leading: Icon(Icons.person),
                        trailing: Icon(Icons.sim_card),
                        title: Text("Dolon GP"),
                        subtitle: Text("Today"),
                      ),
                      ListTile(
                        leading: Icon(Icons.person),
                        trailing: Icon(Icons.sim_card),
                        title: Text("01742679323"),
                        subtitle: Text("Today"),
                      )
                    ],
                  ))
            ],
          ),
          ExpansionTile(
            title: Text("Expantion Three"),
            subtitle: Text("This is one subtitle"),
            leading: CircleAvatar(
              child: Icon(Icons.message_rounded),
            ),
            trailing: Icon(Icons.arrow_drop_down_outlined),
            children: [
              Container(
                  height: 200.0,
                  color: Colors.grey[300],
                  child: ListView(
                    children: [
                      ListTile(
                        leading: Icon(Icons.person),
                        title: Text("GP Offer"),
                        subtitle: Text('1.5 GB 19TK 7 Days'),
                      ),
                      ListTile(
                        leading: Icon(Icons.person),
                        title: Text("GP Offer"),
                        subtitle: Text('1.5 GB 19TK 7 Days'),
                      ),
                      ListTile(
                        leading: Icon(Icons.person),
                        title: Text("GP Offer"),
                        subtitle: Text('1.5 GB 19TK 7 Days'),
                      ),
                    ],
                  ))
            ],
          )
        ],
      ),
    );
  }
}

// This is Design number Two of Expansion Panel.

class ExPen extends StatefulWidget {
  const ExPen({Key? key}) : super(key: key);

  @override
  State<ExPen> createState() => _ExPenState();
}

class _ExPenState extends State<ExPen> {
  bool _expanded = false;

  //var _test = "Full Screen";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(children: [
        Container(
          margin: EdgeInsets.all(10),
          color: Colors.green,
          child: ExpansionPanelList(
            animationDuration: Duration(milliseconds: 1200),
            children: [
              ExpansionPanel(
                headerBuilder: (context, isExpanded) {
                  return ListTile(
                    leading: Icon(Icons.person),
                    title: Text(
                      '01742817738',
                      style: TextStyle(color: Colors.black),
                    ),
                    subtitle: Text("Today"),
                  );
                },
                body: ListTile(
                  title: Column(
                    children: [
                      Text('+ Add to Contact',
                          style: TextStyle(color: Colors.black)),
                      SizedBox(height: 40.0),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Icon(Icons.sim_card_sharp),
                          SizedBox(width: 70.0),
                          Icon(Icons.message_rounded),
                          SizedBox(width: 70.0),
                          Icon(Icons.videocam_rounded),
                          SizedBox(width: 70.0),
                          Icon(Icons.details_rounded)
                        ],
                      )
                    ],
                  ),
                ),
                isExpanded: _expanded,
                canTapOnHeader: true,
              ),
            ],
            dividerColor: Colors.grey,
            expansionCallback: (panelIndex, isExpanded) {
              _expanded = !_expanded;

              setState(() {
                isExpanded = isExpanded;
              });
            },
          ),
        ),
      ]),
    );
  }
}

// This is Design Number Three of Expansion.
class MainPage extends StatefulWidget {
  const MainPage({Key? key}) : super(key: key);

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  static const loremIpsum =
      'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.';
  final List<Item> items = [
    Item(Header: 'Panel 1', body: loremIpsum),
    Item(Header: 'Panel 2', body: loremIpsum),
    Item(Header: 'Panel 3', body: loremIpsum),
    Item(Header: 'Panel 4', body: loremIpsum),
    Item(Header: 'Panel 5', body: loremIpsum),
  ];
  @override
  Widget build(BuildContext context) => Scaffold(
        appBar: AppBar(
          title: Text('Expansion Panel'),
        ),
        body: SingleChildScrollView(
          child: ExpansionPanelList.radio(
              children: items
                  .map((item) => ExpansionPanelRadio(
                    canTapOnHeader: true,
                      value: item.Header,
                      headerBuilder: (context, isExpanded) => ListTile(
                            title: Text(
                              item.Header,
                              style: TextStyle(fontSize: 20),
                            ),
                          ),
                      body: ListTile(
                        title: Text(
                          item.body,
                          style: TextStyle(fontSize: 20),
                        ),
                      )))
                  .toList()),
        ),
      );
}

class Item {
  final String Header;
  final String body;

  const Item({required this.Header, required this.body});
}
