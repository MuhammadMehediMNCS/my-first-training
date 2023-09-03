import 'package:flutter/material.dart';

class NumberWidget extends StatelessWidget {

  @override
  Widget build(BuildContext context) => IntrinsicHeight(
    child: Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [

      ],
    ),
  );
  
  Widget buildNumberButton (BuildContext context, String value, String text) => MaterialButton(
    onPressed: (){},
    child: Column(
      mainAxisSize: MainAxisSize.min,
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        Text(value, style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20.0),),
        Text(text, style: TextStyle(fontWeight: FontWeight.bold),)
      ],
    ),
    );
}