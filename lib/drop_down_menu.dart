import 'package:flutter/material.dart';

class drop_down extends StatelessWidget {
  const drop_down({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: dropDown_widget(),
    );
  }
}

class dropDown_widget extends StatefulWidget {
  const dropDown_widget({Key? key}) : super(key: key);

  @override
  State<dropDown_widget> createState() => _dropDown_widgetState();
}

class _dropDown_widgetState extends State<dropDown_widget> {
  var _selected;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: DropdownButton(
          value: _selected,
          items: [
            DropdownMenuItem(value: 0, child: Text("Item One")),
            DropdownMenuItem(value: 1, child: Text("Item Two")),
            DropdownMenuItem(value: 2, child: Text("Item Three")),
            DropdownMenuItem(value: 3, child: Text("Item Four")),
            DropdownMenuItem(value: 4, child: Text("Item Five")),
            DropdownMenuItem(value: 5, child: Text("Item Six")),
          ],
          onChanged: (con) {
            setState(() {
              _selected = con;
            });
          },
          hint: Text("Select item"),
          disabledHint: Text("Disabled"),
          elevation: 10,
          style: TextStyle(color: Colors.green[500], fontSize: 16.0),
          icon: Icon(Icons.arrow_drop_down_circle),
          iconDisabledColor: Colors.red,
          iconEnabledColor: Colors.green,
          iconSize: 40.0,
          isExpanded: true,
          dropdownColor: Colors.orange[400],
          focusColor: Colors.indigo,
          autofocus: true,
          underline: Container(
            height: 15.0,
            decoration: const BoxDecoration(
                border:
                    Border(bottom: BorderSide(color: Colors.red, width: 0.0))),
          ),
        ),
      ),
    );
  }
}


class Drop_Down extends StatefulWidget {
  const Drop_Down({Key? key}) : super(key: key);

  @override
  State<Drop_Down> createState() => _Drop_DownState();
}

class _Drop_DownState extends State<Drop_Down> {
  var _selected;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: SizedBox(
          width: 240,
          child: DropdownButtonFormField(
            decoration: InputDecoration(
              enabledBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(12),
                borderSide: BorderSide(width: 3, color: Colors.blue)
              )
            ),
            value: _selected,
            items: [
              DropdownMenuItem(value: 0, child: Text("Item One")),
              DropdownMenuItem(value: 1, child: Text("Item Two")),
              DropdownMenuItem(value: 2, child: Text("Item Three")),
              DropdownMenuItem(value: 3, child: Text("Item Four")),
              DropdownMenuItem(value: 4, child: Text("Item Five")),
              DropdownMenuItem(value: 5, child: Text("Item Six")),
            ],
            onChanged: (con) {
              setState(() {
                _selected = con;
              });
            },
          )
        )
      )
    );
  }
}
