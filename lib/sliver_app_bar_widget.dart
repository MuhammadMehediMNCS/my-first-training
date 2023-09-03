import 'package:flutter/material.dart';

class SliverBar extends StatelessWidget {
  const SliverBar({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Developer',
      theme: ThemeData(
        primaryColor: Colors.pink.shade100
      ),
      home: SliversBar(),
    );
  }
}

// Part One :

class SliversBar extends StatefulWidget {
  const SliversBar({ Key? key }) : super(key: key);

  @override
  State<SliversBar> createState() => _SliversBarState();
}

class _SliversBarState extends State<SliversBar> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: [
          SliverAppBar(
            title: Text('Sliver AppBar'),
            centerTitle: true,
            leading: Icon(Icons.arrow_back),
            pinned: true,
            floating: true,
            snap: true,
            backgroundColor: Colors.purple.shade200,
            expandedHeight: 250,
            collapsedHeight: 80,
            flexibleSpace: FlexibleSpaceBar(
              title: Text("Contacts", style: TextStyle(fontSize: 18.0),),
              centerTitle: true,
            ),
            bottom: PreferredSize(child: Text("Sliver Bottom"), preferredSize: Size.fromHeight(50.0)),
          ),
          SliverList(delegate: SliverChildListDelegate(<Widget>[
            ListTile(
              title: Text('GrandFather'),
              subtitle: Text('Son (child)'),
            ),
            ListTile(
              title: Text('GrandMother'),
              subtitle: Text('Wife of GrandFater'),
            ),
            ListTile(
              title: Text('Father'),
            ),
            ListTile(
              title: Text('Mother'),
            ),
            ListTile(
              title: Text('Son'),
            ),
            ListTile(
              title: Text('Daughter'),
            ),
          ]))
        ],
      ),
    );
  }
}


// Part Two :

class SliverApp_2 extends StatefulWidget {
  const SliverApp_2({ Key? key }) : super(key: key);

  @override
  State<SliverApp_2> createState() => _SliverApp_2State();
}

class _SliverApp_2State extends State<SliverApp_2> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: Drawer(),
      body: NestedScrollView(headerSliverBuilder: (BuildContext context, bool innerBoxIsScrolled){
        return <Widget> [
          SliverAppBar(
            expandedHeight: 280.0,
            pinned: true,
            floating: true,
            flexibleSpace: FlexibleSpaceBar(
              centerTitle: true,
              title: Text("Flutter Developer", style: TextStyle(color: Colors.white, fontSize: 18.0),),
              background: Image.asset("name", fit: BoxFit.cover,),
            ),
          ),
        ];
      },
      body: Center(child: Text("This is body Text", style: TextStyle(color: Colors.purple.shade200, fontSize: 20.0),),)),
    );
  }
}