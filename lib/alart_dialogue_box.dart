import 'package:flutter/material.dart';

class alartBox extends StatelessWidget {
  const alartBox({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: alart_Dia(),
    );
  }
}

class alart_Dia extends StatefulWidget {
  const alart_Dia({Key? key}) : super(key: key);

  @override
  State<alart_Dia> createState() => _alart_DiaState();
}

class _alart_DiaState extends State<alart_Dia> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            TextButton(
              onPressed: () {
                showDialog(
                    barrierDismissible: false,
                    barrierLabel: MaterialLocalizations.of(context).modalBarrierDismissLabel,
                    barrierColor: Colors.blue[200],
                    context: context,
                    builder: (context) {
                      return AlertDialog(
                        title: const Text('Welcome Boy'),
                        content:
                            const Text('This is a AlartDialogue Box.\nThank You.'),
                        actions: [
                          TextButton(
                              onPressed: () {
                                Navigator.pop(context);
                              },
                              child: Text('Ok'))
                        ],
                      );
                    });
              },
              child: const Text("Click Here"),
            )
          ],
        ),
      ),
    );
  }
}

// This is another Design of Alart Dialog Box.

class alart_widget extends StatefulWidget {
  @override
  _alart_widgetState createState() {
    return _alart_widgetState();
  }
}

class _alart_widgetState extends State<alart_widget> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            ElevatedButton(
              onPressed: () {
                _showDialog(context);
              },
              child: const Text("Dialogue Message"),
            ),
          ],
        ),
      ),
    );
  }

  _showDialog(BuildContext context) {
    showDialog(
      barrierDismissible: false,
      context: context,
      builder: (BuildContext context) {
        return Expanded(
          child: AlertDialog(
            title: const Text('Welcome Boy'),
            content: const Text('This is a AlartDialogue Box.\nThank You.'),
            actions: [
              TextButton(
                onPressed: () {
                  Navigator.of(context).pop();
                },
                child: const Text(
                  'YES',
                  style: TextStyle(color: Colors.black),
                ),
              ),
              TextButton(
                onPressed: () {
                  Navigator.of(context).pop();
                },
                child: const Text(
                  'NO',
                  style: TextStyle(color: Colors.black),
                ),
              ),
            ],
          ),
        );
      },
    );
  }
}