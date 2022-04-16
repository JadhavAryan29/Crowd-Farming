import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:login/widget/backgroundImage.dart';
import 'package:login/widget/widgets.dart';

class AccountSettingsPage extends StatefulWidget {
  const AccountSettingsPage({Key? key}) : super(key: key);

  @override
  _AccountSettingsPageState createState() => _AccountSettingsPageState();
}

class _AccountSettingsPageState extends State<AccountSettingsPage> {
   bool _switchValue = true;
  var valueChoose;
  List listItem = ['English', 'Hindi', 'Telgu', 'Marathi', 'Tamil', 'Gujrati'];
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
                padding: const EdgeInsets.only(top: 15, left: 2),
                child: Text(
                  'Account Settings',
                  style: kBodyText,
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 35, right: 22, left: 22),
                child: Container(
                  padding: EdgeInsets.only(left: 16, right: 16),
                  decoration: BoxDecoration(
                    border: Border.all(color: Colors.white, width: 0.5),
                    borderRadius: BorderRadius.circular(15),
                  ),
                  child: DropdownButton(
                    hint: Text(
                      'Languages',
                      style: kfeed,
                    ),
                    dropdownColor: Colors.grey,
                    icon: Icon(
                      Icons.arrow_drop_down,
                      color: Colors.white,
                    ),
                    iconSize: 26,
                    isExpanded: true,
                    underline: SizedBox(),
                    style: kfeed,
                    value: valueChoose,
                    onChanged: (newValue) {
                      setState(
                        () {
                          valueChoose = newValue;
                        },
                      );
                    },
                    items: listItem.map(
                      (valueItem) {
                        return DropdownMenuItem(
                          value: valueItem,
                          child: Text(valueItem),
                        );
                      },
                    ).toList(),
                  ),
                ),
              ),
               SizedBox(
                height: 5,
              ),
              AccountSettingsMenu(
                icon: 'assets/icons/placeholder.svg',
                text: 'Location',
                press: () {},
              ),
               SizedBox(height: 10),
              Row(
                children: <Widget>[
                  Padding(
                    padding: const EdgeInsets.only(left: 24),
                    child: Text(
                      "Save Login Info",
                     style: kfeed,
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 152),
                    child: Switch(
                      activeColor: Colors.black12,
                      activeTrackColor: Theme.of(context).primaryColor,
                      value: _switchValue,
                      onChanged: (newValue) {
                        setState(() {
                          _switchValue = newValue;
                        });
                      },
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 15,
              ),
              Divider(
                height: 1,
                thickness: 0.5,
                color: Colors.white,
                indent: 15,
                endIndent: 15,
              ),
              SizedBox(height: 25,),
                Text(
                  'Social Media',
                  style: kBodyText,
                ),
                  SizedBox(
                height: 5,
              ),
              AccountSettingsMenu(
                icon: 'assets/icons/facebook.svg',
                text: 'Facebook',
                press: () {},
              ),
                SizedBox(
                height: 5,
              ),
              AccountSettingsMenu(
                icon: 'assets/icons/instagram.svg',
                text: 'Instagram',
                press: () {},
              ),
                SizedBox(
                height: 5,
              ),
              AccountSettingsMenu(
                icon: 'assets/icons/twitter.svg',
                text: 'Twitter',
                press: () {},
              ),
            ],
          ),
        ),
      ],
    );
  }
}

class AccountSettingsMenu extends StatelessWidget {
  const AccountSettingsMenu({
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