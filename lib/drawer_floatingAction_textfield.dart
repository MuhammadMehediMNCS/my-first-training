import 'dart:async';
import 'package:flutter/material.dart';

import 'Pages/One.dart';

class combined extends StatelessWidget {
  const combined({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Developer',
      theme: ThemeData(
        primaryColor: Colors.green.shade300
      ),
      home: Combined_widget(),
    );
  }
}

class Combined_widget extends StatefulWidget {
  const Combined_widget({ Key? key }) : super(key: key);

  @override
  State<Combined_widget> createState() => _Combined_widgetState();
}

class _Combined_widgetState extends State<Combined_widget> {

  final TextEditingController controller = new TextEditingController();
      // controller.text = "New Text";
      // controller.addListener(({
      // Your logic here. eg: print(controller.text);
      // }))

  @override
  Widget build(BuildContext context) {
    String val = "";

    return Scaffold(
      // Drawer Design

      drawer: Drawer(
        elevation: 20,
        //semanticLabel: ,
        child: Material(
          color: Color.fromARGB(50, 75, 205, 1),
          child: ListView(
            children: <Widget>[
              const DrawerHeader(
                decoration: BoxDecoration(
                  gradient: LinearGradient(colors: [Colors.deepOrange, Colors.orangeAccent]),
                  color: Colors.white),
                child: Text("Drawer Header"),
                // We can use here UserAccountDrawerHeader Widget.
              ),
              const UserAccountsDrawerHeader(
                accountName: Text("Md. Mehedi Hasan"),
                accountEmail: Text("mehedihasan@gmail.com"),
                currentAccountPicture: CircleAvatar(child: Text("M"),),
                currentAccountPictureSize: Size.square(50),
                decoration: BoxDecoration(color: Colors.green),
                otherAccountsPictures: [
                  CircleAvatar(child: Text("M13"),),
                  CircleAvatar(child: Text("M22"),),
                ],
              ),
              ListTile(
                leading: Icon(Icons.people, color: Colors.white,),
                title: Text("People", style: TextStyle(color: Colors.white),),
                hoverColor: Colors.white70,
                onTap: (){
                  Navigator.of(context).pop();
                  Navigator.of(context).push(MaterialPageRoute(builder: (context)=> page_1(),));
                },
              ),
              const SizedBox(height: 16),
              ListTile(
                leading: Icon(Icons.favorite_border, color: Colors.white,),
                title: Text("Favourite", style: TextStyle(color: Colors.white),),
                hoverColor: Colors.white70,
                onTap: (){},
              ),
              const SizedBox(height: 16),
              ListTile(
                leading: Icon(Icons.workspaces_outline, color: Colors.white,),
                title: Text("Workflow", style: TextStyle(color: Colors.white),),
                hoverColor: Colors.white70,
                onTap: (){},
              ),
              const SizedBox(height: 16),
              ListTile(
                leading: Icon(Icons.update, color: Colors.white,),
                title: Text("Updates", style: TextStyle(color: Colors.white),),
                hoverColor: Colors.white70,
                onTap: (){},
              ),
              const SizedBox(height: 24),
              Divider(color: Colors.white70),
              const SizedBox(height: 24),
              ListTile(
                leading: Icon(Icons.account_tree_outlined, color: Colors.white,),
                title: Text("Plugins", style: TextStyle(color: Colors.white),),
                hoverColor: Colors.white70,
                onTap: (){},
              ),
              const SizedBox(height: 16),
              ListTile(
                leading: Icon(Icons.notifications_outlined, color: Colors.white,),
                title: Text("Notifications", style: TextStyle(color: Colors.white),),
                hoverColor: Colors.white70,
                onTap: (){},
              ),
            ],
          ),
        ),
      ),

      // Floating Action Button Design Part 1

      floatingActionButton: FloatingActionButton(
        onPressed: null,
        elevation: 15,
        focusElevation: 5,
        disabledElevation: 0,
        highlightElevation: 50,
        hoverElevation: 50,
        autofocus: true,
        mini: true,
        mouseCursor: MaterialStateMouseCursor.textable,
        backgroundColor: Colors.purple.shade400,
        foregroundColor: Colors.yellow.shade400,
        splashColor: Colors.teal,
        hoverColor: Colors.orange,
        focusColor: Colors.green,
        tooltip: 'Save',
        child: Icon(Icons.save, color: Colors.yellow,),
        //shape: RoundedRectangleBorder(),
        //shape: Border.all(width: 2, color: Colors.green),
        //shape: BeveledRectangleBorder(
        //   borderRadius: BorderRadius.circular(12)
        // ),
        //shape: OutlineInputBorder(),
        //shape: UnderlineInputBorder(),
        shape: CircleBorder(
          side: BorderSide(
            width: 3.0,
            color: Colors.pink
          )
        ),
        heroTag: Hero(tag: 'Unique Tag', child: Icon(Icons.save)), //Same as Hero Widget

        ),
        floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
        floatingActionButtonAnimator: FloatingActionButtonAnimator.scaling,

        // Floating Action Button Design Part 2

        // floatingActionButton: FloatingActionButton.extended(
        //   onPressed: null,
        //   icon: Icon(Icons.send_rounded),
        //   label: Text("Send To")
        //   ),

        // Floating Action Button Design Part 3. View more end

        bottomNavigationBar: BottomAppBar(
          color: Colors.pink,
          shape: CircularNotchedRectangle(),
          notchMargin: 6,
          child:Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              IconButton(onPressed: null, icon: Icon(Icons.home, color: Colors.white,)),
              IconButton(onPressed: null, icon: Icon(Icons.people, color: Colors.white,)),
              SizedBox(width: 20),
              IconButton(onPressed: null, icon: Icon(Icons.notifications, color: Colors.white,)),
              IconButton(onPressed: null, icon: Icon(Icons.settings, color: Colors.white,)),
            ],
          ),
        ),
        // floatingActionButton: FloatingActionButton(
        //   onPressed: null,
        //   backgroundColor: Colors.amber,
        //   child: Icon(Icons.add),
        // ),
        // floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
        

      body: Center(
        child: Column(
          children: [
            TextField(
              controller: controller,
              keyboardType: TextInputType.number,
              textInputAction: TextInputAction.send,
              autocorrect: false,
              textCapitalization: TextCapitalization.sentences,
              obscureText: true,
              cursorWidth: 15,
              cursorHeight: 15,
              cursorColor: Colors.deepOrange,
              showCursor: false,
              autofocus: true,
              enabled: false,
              readOnly: true,
              textAlign: TextAlign.right,
              maxLength: 4,
              maxLines: null,
              minLines: 1,
              toolbarOptions: ToolbarOptions(
                cut: false,
                copy: true,
                paste: true,
                selectAll: true
              ),
              decoration: InputDecoration(
                icon: Icon(Icons.email_rounded),
                prefix: CircularProgressIndicator(),
                prefixText: 'Email',
                prefixIcon: Icon(Icons.emoji_emotions_outlined),
                suffix: CircularProgressIndicator(),
                suffixText: 'Email',
                suffixIcon: Icon(Icons.emoji_objects_sharp),
                hintText: 'User Name',
                hintStyle: TextStyle(color: Colors.orange.shade400, fontSize: 20),
                helperText: 'Enter User Name/Email',
                //border: InputBorder.none,
                border: OutlineInputBorder(),
                enabledBorder: OutlineInputBorder(borderSide: BorderSide(color: Colors.black54)),
                focusedBorder: OutlineInputBorder(borderSide: BorderSide(color: Colors.deepOrange)),
              ),
              onTap: () {
                print("Pressed the textfield");
              },
              onChanged: (value) {
                val = value;
              },
              onSubmitted: (value) {
                //value is the text of the text field.
              },
              onEditingComplete: () {
                //do something
              },
            ),
            TextField(
                showCursor: false,
                cursorColor: Colors.green,
                decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.green)),
                  labelText: 'Receive Amount',
                  labelStyle: TextStyle(color: Colors.green),
                  prefixIcon: Icon(
                    Icons.attach_money,
                    color: Colors.green,
                  ),
                ),
                onTap: () {
                  FocusScope.of(context).requestFocus(new FocusNode());
                },
              ),
          ],
        ),
      ),
    );
  }
}


// Floating Action Button Design Part 4

class Combined_widget2 extends StatefulWidget {
  const Combined_widget2({ Key? key }) : super(key: key);

  @override
  State<Combined_widget2> createState() => _Combined_widget2State();
}

class _Combined_widget2State extends State<Combined_widget2> with SingleTickerProviderStateMixin {

  late AnimationController _animationController;

  late Animation<double> _buttonAnimatedIcon;

  late Animation<double> _translateButton;

  bool _isExpanded = false;

  @override
  initState() {
    _animationController = AnimationController(
      vsync: this, duration: const Duration(milliseconds: 600))..addListener(() {
        setState(() {});
    });

    _buttonAnimatedIcon = Tween<double>(begin: 0.0, end: 1.0).animate(_animationController);

    _translateButton = Tween<double>(begin: 100, end: -20).animate(
      CurvedAnimation(parent: _animationController, curve: Curves.easeInOut));
    
    super.initState();
  }

  @override
  dispose() {
    _animationController.dispose();
    super.dispose();
  }

  _toggle() {
    if (_isExpanded){
      _animationController.reverse();
    } else {
      _animationController.forward();
    }
    _isExpanded = !_isExpanded;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          Transform(transform: Matrix4.translationValues(0.0, _translateButton.value *4, 0.0),
          child: FloatingActionButton(
            backgroundColor: Colors.blue,
            onPressed: null,
            child: const Icon(Icons.email),
            ),
          ),
          Transform(transform: Matrix4.translationValues(0, _translateButton.value *3, 0),
          child: FloatingActionButton(
            backgroundColor: Colors.red,
            onPressed: null,
            child: const Icon(Icons.call),
            ),
          ),
          Transform(transform: Matrix4.translationValues(0, _translateButton.value *2, 0),
          child: FloatingActionButton(
            backgroundColor: Colors.amber,
            onPressed: null,
            child: const Icon(Icons.message),
            ),
          ),
          FloatingActionButton(
            onPressed: _toggle,
            child: AnimatedIcon(
              icon: AnimatedIcons.menu_close,
              progress: _buttonAnimatedIcon
              ),
            )
        ],
      ),
    );
  }
}