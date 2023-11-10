import 'package:flutter/material.dart';
import 'package:my_first_practice/ui_design/profile_widget.dart';
import 'package:my_first_practice/ui_design/user.dart';
import 'package:my_first_practice/ui_design/user_preferrences.dart';

import 'appbar_widget.dart';
import 'button_widget.dart';

class ProfilePage extends StatefulWidget {
  const ProfilePage({Key? key}) : super(key: key);

  @override
  State<ProfilePage> createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
  @override
  Widget build(BuildContext context) {
    final user = UserPreferences.myUser;

    return Scaffold(
      appBar: buildAppBar(context),
      body: ListView(
        physics: BouncingScrollPhysics(),
        children: [
          ProfileWidget(
            imagePath: user.imagePath, 
            onClicked: () {}
            ),
            const SizedBox(height: 24.0),
            buildName(user),
            const SizedBox(height: 24.0),
            Center(child: buildButton()),
          ],
      ),
    );
  }

Widget buildName(User user) => Column(
  children: [
    Text(
      user.name,
      style: TextStyle(fontWeight: FontWeight.bold, fontSize: 24.0),
    ),
    const SizedBox(height: 4.0),
    Text(
      user.email,
      style: TextStyle(color: Colors.grey),
    )
  ],
);

Widget buildButton() => ButtonWidget(
  text: 'Update Profile',
  onClicked: () {}
  );

}
