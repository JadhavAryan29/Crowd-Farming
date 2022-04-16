import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:login/screens/profilePage/help_support_page.dart';
import 'package:login/screens/profilePage/privacy_policy_page.dart';
import 'package:login/widget/widgets.dart';

class Body extends StatelessWidget {
  const Body({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(
          height: 115,
          width: 115,
          child: Stack(
            fit: StackFit.expand,
            overflow: Overflow.visible,
            children: [
              CircleAvatar(
                backgroundImage: AssetImage('assets/farm.png'),
              ),
              Positioned(
                right: -6,
                bottom: 0,
                child: SizedBox(
                  height: 38,
                  width: 38,
                  child: TextButton(
                    style: TextButton.styleFrom(
                      backgroundColor: Colors.grey[50],
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(50),
                        side: BorderSide(color: Colors.black),
                      ),
                    ),
                    onPressed: () {},
                    child: SvgPicture.asset(
                      'assets/icons/camera.svg',
                      color: Colors.black,
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
        SizedBox(
          height: 16,
        ),
        Text(
          'Aryan Jadhav',
          style: kBodyText,
        ),
        SizedBox(
          height: 10,
        ),
        Text(
          'a****************@gmail.com',
          style: kfeed,
        ),
        SizedBox(
          height: 12,
        ),
        Container(
          height: 30,
          width: 100,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(5),
            color: Colors.teal[100]!.withOpacity(0.8),
          ),
          child: Center(
            child: Text('Invest'),
          ),
        ),
        SizedBox(
          height: 6,
        ),
        ProfileMenu(
          icon: 'assets/icons/privacy.svg',
          text: 'Privacy Policy',
          press: () {
            Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => PrivacyPolicyPage(),
                ));
          },
        ),
        ProfileMenu(
          icon: 'assets/icons/help.svg',
          text: 'Help & Support',
          press: () { Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => HelpSupportPage(),
                ));},
        ),
        ProfileMenu(
          icon: 'assets/icons/about.svg',
          text: 'About Us',
          press: () {},
        ),
        ProfileMenu(
          icon: 'assets/icons/invite.svg',
          text: 'Invite a Friend',
          press: () {},
        ),
        ProfileMenu(
          icon: 'assets/icons/logout.svg',
          text: 'Logout',
          press: () {},
        ),
      ],
    );
  }
}

class ProfileMenu extends StatelessWidget {
  const ProfileMenu({
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
