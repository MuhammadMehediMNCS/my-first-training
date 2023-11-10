import 'package:flutter/material.dart';

class NavigationWidget extends StatelessWidget {
  final title = 'Flutter Developer';

  const NavigationWidget ({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: title,
      theme: ThemeData(
        primarySwatch: Colors.green
      ),
      home: const MyNavigation(),
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
  final List<Widget> _items = [
    const Text('Index 0: Home'),
    const Text('Index 1: Profile'),
    const Text('Index 2: Shop'),
  ];
  int _selectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: () async {
        setState(() {
          _selectedIndex = 1;
        });

        return false;
      },
      child: Scaffold(
        appBar: AppBar(
          title: const Text("Flutter Devloper"),
        ),
        body: Center(
          child: IndexedStack(
            index: _selectedIndex,
            children: _items,
          ),
        ),
        bottomNavigationBar: _showBottomNav(),
      ),
    );
  }
  Widget _showBottomNav() {
    return BottomNavigationBar(
      items: const [
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
      showUnselectedLabels: false,
      );
  }
  void _onTap (int index) {
    setState(() {
      _selectedIndex = index;
    });
  }
}