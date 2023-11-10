import 'package:flutter/material.dart';
import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:curved_navigation_bar/curved_navigation_bar.dart';

class Curv_widget extends StatelessWidget {
  const Curv_widget({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      
      home: Curv_nav(),
    );
  }
}

class Curv_nav extends StatefulWidget {
  const Curv_nav({ Key? key }) : super(key: key);

  @override
  State<Curv_nav> createState() => _Curv_navState();
}

class _Curv_navState extends State<Curv_nav> {
  int index = 2;

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.blue,
      child: SafeArea(
        top: false,
        child: ClipRect(
          child: Scaffold(
            extendBody: true,
            backgroundColor: Colors.orange,
            appBar: AppBar(
              title: const Text('Curved Navigation Bar'),
              centerTitle: true,
            ),
            body: Center(
              child: Text("$index", style: const TextStyle(
                color: Colors.white, fontSize: 120, fontWeight: FontWeight.bold),
              ),
            ),
            bottomNavigationBar: Theme(
              data: Theme.of(context).copyWith(
                iconTheme: const IconThemeData(color: Colors.white),
              ),
              child: CurvedNavigationBar(
                index: index,
                color: Colors.blue,
                backgroundColor: Colors.transparent,
                buttonBackgroundColor: Colors.purple.shade300,
                height: 60,
                animationCurve: Curves.easeInOut,
                animationDuration: const Duration(milliseconds: 300),
                items: const [Icon(Icons.home, size: 30),
                Icon(Icons.search, size: 30),
                Icon(Icons.favorite, size: 30),
                Icon(Icons.settings, size: 30),
                Icon(Icons.person,size: 30)
                ],
                onTap: (index) => setState(() => this.index = index),
                ),
            ),
          ),
        ),
      ),
    );
  }
}