import 'package:flutter/material.dart';
import 'package:login/screens/bottomNav/setting_page.dart';
import 'package:login/widget/backgroundImage.dart';
import 'package:login/screens/profilePage/body_page.dart';
import 'package:login/widget/widgets.dart';

class ProfilePage extends StatefulWidget {
  const ProfilePage({Key? key}) : super(key: key);

  @override
  _ProfilePageState createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        BackgroundImage(),
        Scaffold(
          backgroundColor: Colors.transparent,
          appBar: AppBar(
            backgroundColor: Colors.transparent,
            elevation: 0,
            leading: Padding(
              padding: EdgeInsets.symmetric(horizontal: 10),
              child: IconButton(
                icon: Icon(Icons.arrow_back),
                onPressed: () {},
              ),
            ),
            titleSpacing: 0,
            title: Padding(
              padding: const EdgeInsets.all(59),
              child: Text(
                "Crowd Farming",
                style: kBodyText,
                textScaleFactor: 1,
              ),
            ),
            actions: [
              IconButton(
                icon: Icon(Icons.settings),
                onPressed: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => SettingsPage(),
                      ));
                },
              ),
            ],
          ),
          body: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Body(),
          ),
        ),
      ],
    );
  }
}
