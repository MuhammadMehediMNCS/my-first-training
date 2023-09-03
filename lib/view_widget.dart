import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';

class view_scroll extends StatelessWidget {
  const view_scroll({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Some Commone Scroll View',
      theme: ThemeData(
        primaryColor: Colors.blue.shade300
      ),
      home: some_scroll(),
    );
  }
}

// View Number One (Single Child Scroll View).

class some_scroll extends StatefulWidget {
  const some_scroll({ Key? key }) : super(key: key);

  @override
  State<some_scroll> createState() => _some_scrollState();
}

class _some_scrollState extends State<some_scroll> {
  late PageController _controller;

  @override
  void initState() {
    _controller = PageController(initialPage: 0);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.brown.shade200,
        title: Text("Some Scroll View Design"),
      ),
      body: SingleChildScrollView(
        controller: _controller,
        scrollDirection: Axis.vertical,
        padding: EdgeInsets.all(16.0),
        physics: BouncingScrollPhysics(),
        reverse: true,
        dragStartBehavior: DragStartBehavior.down,
        clipBehavior: Clip.hardEdge,
        keyboardDismissBehavior: ScrollViewKeyboardDismissBehavior.onDrag,
        child: Container(),
      ),
    );
  }
}

// View Number Two (List View).

class listView_design extends StatefulWidget {
  const listView_design({ Key? key }) : super(key: key);

  @override
  State<listView_design> createState() => _listView_designState();
}

class _listView_designState extends State<listView_design> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: ListView(
        children: [
          ListTile(
            title: Text("Flutter"),
            subtitle: Text("Flutter is a open source UI devlopement kit"),
            leading: Icon(Icons.person),
            trailing: Icon(Icons.access_alarm),
            tileColor: Colors.green,
            shape: CircleBorder(),
            isThreeLine: true,
            contentPadding: EdgeInsets.all(16.0),
          )
        ],
       ),
      ),
    );
  }
}

// View Number Three (Grid View.Count).

class grid_view extends StatefulWidget {
  const grid_view({ Key? key }) : super(key: key);

  @override
  State<grid_view> createState() => _grid_viewState();
}

class _grid_viewState extends State<grid_view> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: GridView.count(
          crossAxisCount: 4,
          crossAxisSpacing: 15,
          mainAxisSpacing: 15,
          reverse: true,
          padding: EdgeInsets.all(22.0),
          physics: BouncingScrollPhysics(),
          primary: false,
          shrinkWrap: true,
          childAspectRatio: 8.0,
          children: [
            Container(
              height: 200,
              width: 230,
              color: Colors.purple,
              child: Text("Flutter Developer", style: TextStyle(color: Colors.white),),
            )
          ],
        ),
      ),
    );
  }
}