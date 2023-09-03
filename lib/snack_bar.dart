import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class snackBar_design extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: snackBar_widget(),
    );
  }
}

class snackBar_widget extends StatefulWidget {
  @override
  _snackBar_widgetState createState() {
    return _snackBar_widgetState();
  }
}

class _snackBar_widgetState extends State<snackBar_widget> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("This is a Snack Bar"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            ElevatedButton(
              onPressed: () {
                ScaffoldMessenger.of(context).showSnackBar(SnackBar(
                  elevation: 30,
                  content: Text('Unknown Application'),
                  backgroundColor: Colors.green,
                  //padding: EdgeInsets.all(20),
                  //shape: StadiumBorder(),
                  behavior: SnackBarBehavior.floating,
                  //width: 200,
                  margin: EdgeInsets.all(50),
                  duration: Duration(milliseconds: 10000),
                  action: SnackBarAction(
                    label: 'Dismiss',
                    disabledTextColor: Colors.white,
                    textColor: Colors.deepOrange,
                    onPressed: () {
                      //Do whatever you want
                    },
                  ),
                  onVisible: () {},
                ));
              },
              child: Text("Show Snackbar"),
            ),
          ],
        ),
      ),
    );
  }
}
