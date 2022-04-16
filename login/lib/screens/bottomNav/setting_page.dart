import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:login/account_settings.dart';
import 'package:login/widget/backgroundImage.dart';
import 'package:login/widget/widgets.dart';

class SettingsPage extends StatefulWidget {
  const SettingsPage({Key? key}) : super(key: key);

  @override
  _SettingsPageState createState() => _SettingsPageState();
}

class _SettingsPageState extends State<SettingsPage> {
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
            titleSpacing: 0,
            title: Padding(
              padding: const EdgeInsets.all(59),
              child: Text(
                "Crowd Farming",
                style: kBodyText,
                textScaleFactor: 1,
              ),
            ),
          ),
          body: Column(
            children: [
              Padding(
                padding: const EdgeInsets.only(top: 15, right: 4),
                child: Text(
                  'Settings',
                  style: kBodyText,
                ),
              ),
              SizedBox(
                height: 20,
              ),
              SettingsMenu(
                icon: 'assets/icons/setting.svg',
                text: 'Account Settings',
                press: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => AccountSettingsPage(),
                    ),
                  );
                },
              ),
              SettingsMenu(
                icon: 'assets/icons/bell.svg',
                text: 'Notifications',
                press: () {},
              ),
              SettingsMenu(
                icon: 'assets/icons/insights.svg',
                text: 'Insights',
                press: () {},
              ),
              SizedBox(
                height: 5,
              ),
              Divider(
                height: 1,
                thickness: 0.5,
                color: Colors.white,
                indent: 15,
                endIndent: 15,
              ),
              SizedBox(
                height: 5,
              ),
              SettingsMenu(
                icon: 'assets/icons/bug.svg',
                text: 'Report A Bug',
                press: () {},
              ),
              SettingsMenu(
                icon: 'assets/icons/review.svg',
                text: 'Send Feedback',
                press: () {},
              ),
              SizedBox(
                height: 5,
              ),
              Divider(
                height: 1,
                thickness: 0.5,
                color: Colors.white,
                indent: 15,
                endIndent: 15,
              ),
              SizedBox(
                height: 5,
              ),
              SettingsMenu(
                icon: 'assets/icons/delete.svg',
                text: 'Delete My Account',
                press: () {},
              ),
            ],
          ),
        ),
      ],
    );
  }
}

class SettingsMenu extends StatelessWidget {
  const SettingsMenu({
    Key? key,
    required this.text,
    required this.icon,
    required this.press,
  }) : super(key: key);

  final String text, icon;
  final VoidCallback press;

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 14),
        child: TextButton(
          style: TextButton.styleFrom(
            backgroundColor: Colors.transparent,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(10),
            ),
          ),
          onPressed: press,
          child: Padding(
            padding: const EdgeInsets.all(5.0),
            child: Row(
              children: [
                SvgPicture.asset(
                  icon,
                  width: 22,
                  color: Colors.white,
                ),
                SizedBox(
                  width: 20,
                ),
                Expanded(
                  child: Text(
                    text,
                    style: kfeed,
                  ),
                ),
                Icon(
                  Icons.arrow_forward_ios,
                  color: Colors.white,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
