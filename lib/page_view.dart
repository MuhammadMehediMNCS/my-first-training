import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';

import 'Pages/Four.dart';
import 'Pages/One.dart';
import 'Pages/Three.dart';
import 'Pages/Two.dart';

class pages extends StatelessWidget {
  const pages({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'User Pages View',
      theme: ThemeData(primaryColor: Colors.blue.shade300),
      home: View_pages(),
    );
  }
}

class View_pages extends StatefulWidget {
  const View_pages({Key? key}) : super(key: key);

  @override
  State<View_pages> createState() => _View_pagesState();
}

class _View_pagesState extends State<View_pages> {
  int index = 0;
  PageController _controller = PageController(initialPage: 0);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.purple.shade300,
      body: PageView(
        scrollDirection: Axis.vertical,
        controller: _controller,
        reverse: true,
        physics: BouncingScrollPhysics(),
        pageSnapping: false,
        allowImplicitScrolling: true,
        dragStartBehavior: DragStartBehavior.down,
        clipBehavior: Clip.none,
        children: [page_1(), page_2(), page_3(), page_4()],
      ),
    );
  }
}



class Page_View extends StatefulWidget {
  const Page_View({Key? key}) : super(key: key);

  @override
  State<Page_View> createState() => _Page_ViewState();
}

class _Page_ViewState extends State<Page_View> {
  final _controller = PageController(initialPage: 1);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Page View'),
        actions: [
          IconButton(
            icon: const Icon(Icons.keyboard_arrow_left),
            onPressed: () => _controller.previousPage(    //_controller.animatedToPage(0,..)
              duration: const Duration(seconds: 1),
              curve: Curves.easeInOut
            ),
          ),
          IconButton(
            icon: const Icon(Icons.keyboard_arrow_right),
            onPressed: () => _controller.nextPage(     //_controller.animatedToPage(2,..)
              duration: Duration(seconds: 1),
              curve: Curves.easeInOut
            ),
          )
        ],
      ),
      body: PageView(
        scrollDirection: Axis.vertical,  //horizontal
        physics: const NeverScrollableScrollPhysics(),
        controller: _controller,
        onPageChanged: (index) {
          print('Page ${index + 1}');
        },
        children: [
          Container(
            color: Colors.red,
            child: const Center(child: Text('Page 1'),),
          ),
          Container(
            color: Colors.indigo,
            child: const Center(child: Text('Page 2'),),
          ),
          Container(
            color: Colors.green,
            child: const Center(child: Text('Page 3'),),
          )
        ],
      ),
    );
  }
}