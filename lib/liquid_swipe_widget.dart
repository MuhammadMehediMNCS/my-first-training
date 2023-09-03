import 'package:flutter/material.dart';
import 'package:liquid_swipe/liquid_swipe.dart';

class ls_widget extends StatelessWidget {
  const ls_widget({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: liq_swipe(),
    );
  }
}

class liq_swipe extends StatefulWidget {
  const liq_swipe({ Key? key }) : super(key: key);

  @override
  State<liq_swipe> createState() => _liq_swipeState();
}

class _liq_swipeState extends State<liq_swipe> {
  final controller = LiquidController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          LiquidSwipe(
            liquidController: controller,
          enableSideReveal: true,
          pages: [
            Container(
              color: Colors.black,
              child: const Center(child: Text("Page 1", style: TextStyle(
                color: Colors.white, fontSize: 120, fontWeight: FontWeight.bold),),
                ),
            ),
            Container(
              color: Colors.blue.shade800,
              child: const Center(child: Text("Page 2", style: TextStyle(
                color: Colors.white, fontSize: 120, fontWeight: FontWeight.bold),),
                ),
            ),
            Container(
              color: Colors.deepPurple,
              child: const Center(child: Text("Page 3", style: TextStyle(
                color: Colors.white, fontSize: 120, fontWeight: FontWeight.bold),),
                ),
            ),
          ]
          ),
          Positioned(
            bottom: 0,
            left: 16,
            right: 32,
            child: Row(
              children: [
                TextButton(
                  onPressed: (){
                    controller.jumpToPage(page: 3);
                  },
                  child: Text("Skip")
                ),
                TextButton(
                  onPressed: (){
                    final page = controller.currentPage + 1;

                    controller.animateToPage(page: page > 4 ? 0 : page,
                    duration: 400
                    );
                  },
                  child: Text("Next")
                ),
              ],
            )
          )
        ]
      ),
    );
  }
}