import 'package:flutter/material.dart';

class resume_widget extends StatefulWidget {
  const resume_widget({ Key? key }) : super(key: key);

  @override
  State<resume_widget> createState() => _resume_widgetState();
}

class _resume_widgetState extends State<resume_widget> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("Resume Builder"),
          actions: [Icon(Icons.g_translate, size: 25,),
          SizedBox(width: 40,),
          Icon(Icons.notifications,size: 25,),
          SizedBox(width: 40,),
          PopupMenuButton(itemBuilder: (context)=>[
            PopupMenuItem(child: Text("Notification"),),
            PopupMenuItem(child: Text("Privacy Policy"),),
            PopupMenuItem(child: Text("Rate us"),),
          ])
          ],
        ),
        drawer: Drawer(
          child: Container(
            child: ListView(
              children: [
                DrawerHeader(
                  child: UserAccountsDrawerHeader(
                    accountName: Text("Your Account"),
                    accountEmail: Text("Login with Google or Facebook"),
                    currentAccountPicture: CircleAvatar(),
                    currentAccountPictureSize: Size.square(50),
                  ),
                ),
                ListTile(
                  leading: Icon(Icons.home),
                  title: Text("Home"),
                ),
                ListTile(
                  leading: Icon(Icons.group_add),
                  title: Text("Invite Friends"),
                ),
                ListTile(
                  leading: Icon(Icons.library_books),
                  title: Text("My Creation"),
                ),
                ListTile(
                  leading: Icon(Icons.video_library),
                  title: Text("Video Tutorial"),
                ),
                ListTile(
                  leading: Icon(Icons.update),
                  title: Text("Updates"),
                ),
                Divider(color: Colors.blue,),
                ListTile(
                  leading: Icon(Icons.https_outlined),
                  title: Text("View Full Version"),
                ),
                ListTile(
                  leading: Icon(Icons.settings),
                  title: Text("Settings"),
                ),
                ListTile(
                  leading: Icon(Icons.comment),
                  title: Text("Feedback"),
                ),
              ],
            ),
          ),
        ),
        body: GridView.count(crossAxisCount: 2,
        crossAxisSpacing: 25,
        mainAxisSpacing: 25,
        children: [
          Container(
            child: Column(
              children: [
                Image.asset("images/pen.png", height: 150, width: 200,),
                SizedBox(height: 50,),
                Text("Create Your CV or Resume", style: TextStyle(fontSize: 20, color: Colors.white),),
              ],
            ),
            height: 100,
            width: 100,
            color: Colors.blueGrey,
          ),
          Container(
            child: Column(
              children: [
                Image.network("https://st3.depositphotos.com/5532432/17926/v/450/depositphotos_179265548-stock-illustration-resume-writing-vector-icon.jpg", height: 150, width: 200,),
                SizedBox(height: 50,),
                Text("Cover Lettre", style: TextStyle(fontSize: 20, color: Colors.white),),
              ],
            ),
            height: 100,
            width: 100,
            color: Colors.blueGrey,
          ),
          Container(
            child: Column(
              children: [
                Image.network("https://image.shutterstock.com/image-vector/manager-management-vector-icon-illustration-260nw-1992075905.jpg", height: 150, width: 200,),
                SizedBox(height: 50,),
                Text("Resignation Letter", style: TextStyle(fontSize: 20, color: Colors.white),),
              ],
            ),
            height: 100,
            width: 100,
            color: Colors.blueGrey,
          ),
          Container(
            child: Column(
              children: [
                Image.asset("images/letter.png", height: 150, width: 200,),
                SizedBox(height: 50,),
                Text("Promotion Letter", style: TextStyle(fontSize: 20, color: Colors.white),),
              ],
            ),
            height: 100,
            width: 100,
            color: Colors.blueGrey,
          ),
        ],
        )
      ),
    );
  }
}