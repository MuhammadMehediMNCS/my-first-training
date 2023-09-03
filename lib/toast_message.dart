import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:fluttertoast/fluttertoast.dart';

class toastMessage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: toast_widget(),
    );
  }
}

class toast_widget extends StatefulWidget {
  @override
  _toast_widgetState createState() {
    return _toast_widgetState();
  }
}

class _toast_widgetState extends State<toast_widget> {
  final fToast = FToast();

  @override
  void initState() {
    super.initState();

    fToast.init(context);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("This is a Toast Message"),
        ),
        body: Container(
          margin: EdgeInsets.all(20),
          alignment: Alignment.center,
          child: Column(
            children: [
              ElevatedButton(
                child: Text("Show Toast"),
                onPressed: () {
                  showToast();
                },
              ),
              SizedBox(height: 20.0),
              ElevatedButton(
                child: Text("Show Custom Toast"),
                onPressed: () {
                  showCustomToast();
                },
              ),
            ],
          ),
        ));
  }

  void showToast() {
    Fluttertoast.showToast(
      msg: 'This is a toast message',
      toastLength: Toast.LENGTH_SHORT,
      gravity: ToastGravity.BOTTOM_LEFT,
      fontSize: 20,
      textColor: Colors.yellow,
      backgroundColor: Colors.green,
    );
  }

  showCustomToast() {
    Widget toast = Container(
      padding: const EdgeInsets.symmetric(horizontal: 24.0, vertical: 12.0),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(25.0),
        color: Colors.greenAccent,
      ),
      child: Text("This is a Custom Toast"),
    );

    fToast.showToast(
      child: toast,
      toastDuration: Duration(seconds: 3),
      gravity: ToastGravity.CENTER,
      //fadeDuration: 2000,
      positionedToastBuilder: (context, child) {
        return Positioned(
          child: child,
          top: 160.0,
          left: 16.0,
        );
      },
    );
  }
}

Widget toast = Container(
  padding: const EdgeInsets.symmetric(horizontal: 24.0, vertical: 12.0),
  decoration: BoxDecoration(
      borderRadius: BorderRadius.circular(25.0), color: Colors.greenAccent),
  child: Row(
    mainAxisSize: MainAxisSize.min,
    children: [Icon(Icons.check), SizedBox(width: 12.0), Text("Deleted")],
  ),
);