import 'package:flutter/material.dart';

class container_widget extends StatefulWidget {
  const container_widget({ Key? key }) : super(key: key);

  @override
  State<container_widget> createState() => _container_widgetState();
}

class _container_widgetState extends State<container_widget> {
  @override
  Widget build(BuildContext context) {
    final title = 'Container Design';

    return MaterialApp(
      title: title,
      theme: ThemeData(
        primaryColor: Colors.blue.shade300
      ),
      home: Scaffold(
        appBar: AppBar(
          title: Text(title),
        ),
        body: Center(
          child: Container(
            padding: EdgeInsets.fromLTRB(20, 20, 20, 20),
            height: 200,
            width: 200,
            color: Colors.orange,
            //alignment: Alignment.center,
            //alignment: Alignment(1.0, -1.0),
            //alignment: FractionalOffset.bottomRight,
            //alignment: FractionalOffset(0.0, 0.5),
            //alignment: AlignmentDirectional.bottomEnd,
            alignment: AlignmentDirectional(-1.0, 1.0),
            margin: EdgeInsets.all(50),
            clipBehavior: Clip.none,
            // decoration: ShapeDecoration(shape: RoundedRectangleBorder(
            //   borderRadius: BorderRadius.all(Radius.circular(10))
            // )),
            decoration: BoxDecoration(
              border: Border.all(color: Colors.black, width: 4),
              borderRadius: BorderRadius.circular(8),
              shape: BoxShape.circle,
              gradient: LinearGradient(colors: [Colors.lightBlue, Colors.yellow]),
              boxShadow: [
                BoxShadow(
                  color: Colors.black12,
                  offset: Offset(5,5)
                )
              ],
              color: Colors.green
            ),
            //constraints: BoxConstraints.expand(height: 300, width: 250),
            constraints: BoxConstraints(
              maxHeight: 300, maxWidth: 200, minHeight: 100,minWidth: 100
            ),
            //transform: Matrix4.rotationZ(35),
            transform: Matrix4.skewX(3.0)..rotateZ(80),
            //child: Text("Container One"),
            child: FlutterLogo(size: 150,),
          ),
        ),
      ),
    );
  }
}