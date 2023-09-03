import 'package:flutter/material.dart';

class navigationBar_widget extends StatelessWidget {
  const navigationBar_widget ({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final title = 'Flutter Developer';

    return MaterialApp(
      title: title,
      theme: ThemeData(
        primarySwatch: Colors.green
      ),
      home: MyNavigation(),
    );
  }
}

class MyNavigation extends StatefulWidget {
  const MyNavigation({ Key? key }) : super(key: key);

  @override
  State<MyNavigation> createState() => _MyNavigationState();
}

class _MyNavigationState extends State<MyNavigation> {
  //List<String> _titles = ["Home", "Profile", "Shop"];
  List<Widget> _items = [
    Text('Index 0: Home'),
    Text('Index 1: Profile'),
    Text('Index 2: Shop'),
  ];
  int _selectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Flutter Devloper"),
      ),
      body: Center(
        child: IndexedStack(
          index: _selectedIndex,
          children: _items,
        ),
      ),
      bottomNavigationBar: _showBottomNav(),
    );
  }
  Widget _showBottomNav() {
    return BottomNavigationBar(
      items: [
        BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Home'),
        BottomNavigationBarItem(icon: Icon(Icons.account_circle), label: 'Profile'),
        BottomNavigationBarItem(icon: Icon(Icons.shopping_bag), label: 'Shop'),
      ],
      elevation: 15,
      backgroundColor: Colors.green,
      currentIndex: _selectedIndex,
      selectedItemColor: Colors.green,
      unselectedItemColor: Colors.grey,
      onTap: _onTap,
      type: BottomNavigationBarType.shifting, //BottomNavigationBarType.fixed
      iconSize: 30,
      selectedFontSize: 20,
      unselectedFontSize: 15,
      //showSelectedLabels: false,
      //showUnselectedLabels: false,
      );
  }
  void _onTap (int index) {
    _selectedIndex = index;
    setState(() {
      
    });
  }
}