import 'package:flutter/material.dart';

class M_Button extends StatelessWidget {
  const M_Button({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        dividerColor: Colors.black
      ),
      home: Scaffold(
        body: Center(
          child: IntrinsicHeight(
            child: Row(
              children: [
                buildMaterialButton(context, "4.8", "Ranking"),
                buildDivider(),
                buildMaterialButton(context, "35", "Following"),
                buildDivider(),
                buildMaterialButton(context, "50", "Followers")
              ],
            ),
          ),
        ),
      ),
    );
  }
  Widget buildDivider() => Container(height: 22.0, child: VerticalDivider());

  Widget buildMaterialButton(BuildContext context, String value, String text) {
    return MaterialButton(
      padding: const EdgeInsets.symmetric(vertical: 4.0),
      materialTapTargetSize: MaterialTapTargetSize.shrinkWrap,
      child: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(value, style: TextStyle(fontSize: 25.0, fontWeight: FontWeight.bold),),
          Text(text,style: TextStyle(fontWeight: FontWeight.bold),)
        ],
      ),
      onPressed: () {}
    );
  }
}