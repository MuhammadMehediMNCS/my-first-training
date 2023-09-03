import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';

class TabBar_Scroll extends StatelessWidget {
  const TabBar_Scroll({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: TabBar_widget(),
    );
  }
}

class TabBar_widget extends StatefulWidget {

  @override
  State<StatefulWidget> createState() {
    return TabBar_widgetState();
  }
}

class TabBar_widgetState extends State<TabBar_widget> with TickerProviderStateMixin {
  

  late TabController _tabController;

  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: 6, vsync: this);
    _tabController.animateTo(2);
  }

  static const List<Tab> _tab =[
    const Tab(icon: Icon(Icons.looks_one), child: const Text('Tab One')),
    const Tab(icon: Icon(Icons.looks_two), text: 'Tab Two'),
    const Tab(icon: Icon(Icons.looks_3), text: 'Tab Three'),
    const Tab(icon: Icon(Icons.looks_4), text: 'Tab Four'),
    const Tab(icon: Icon(Icons.looks_5), text: 'Tab Five'),
    const Tab(icon: Icon(Icons.looks_6), text: 'Tab Six'),
  ];

  static const List<Widget> _views = [
    const Center(child: const Text('Content of Tab One')),
    const Center(child: const Text('Content of Tab Two')),
    const Center(child: const Text('Content of Tab Three')),
    const Center(child: const Text('Content of Tab Four')),
    const Center(child: const Text('Content of Tab Five')),
    const Center(child: const Text('Content of Tab Six')),
  ];

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: DefaultTabController(
        length: 6,
        child: Scaffold(
          appBar: AppBar(
            bottom: TabBar(
              labelColor: Colors.white,
              unselectedLabelColor: Colors.grey,
              labelStyle: const TextStyle(fontWeight: FontWeight.bold),
              unselectedLabelStyle: const TextStyle(fontStyle: FontStyle.italic),
              overlayColor: MaterialStateColor.resolveWith((Set<MaterialState> states){
                if (states.contains(MaterialState.pressed)) {
                  return Colors.blue;
                } if (states.contains(MaterialState.focused)) {
                  return Colors.orange;
              } else if (states.contains(MaterialState.hovered)) {
                return Colors.pinkAccent;
              }
              return Colors.transparent;
              }),
              indicatorWeight: 8,
              indicatorColor: Colors.red,
              indicatorSize: TabBarIndicatorSize.tab,
              indicatorPadding: const EdgeInsets.all(5),
              indicator: BoxDecoration(
                border: Border.all(color: Colors.red),
                borderRadius: BorderRadius.circular(10),
                color: Colors.pinkAccent,
              ),
              isScrollable: true,
              physics: BouncingScrollPhysics(),
              onTap: (int index){
                print('Tab $index is tapped');
              },
              enableFeedback: true,
              tabs: _tab
              ),
              title: const Text("Flutter Developer"),
              backgroundColor: Colors.teal,
          ),
          body: TabBarView(
            physics: BouncingScrollPhysics(),
            dragStartBehavior: DragStartBehavior.down,
            children: _views
            ),
        )
      ),
    );
  }
}