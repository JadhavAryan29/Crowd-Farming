import 'package:flutter/material.dart';
import 'package:login/screens/appDrawer/bee_page.dart';
import 'package:login/screens/appDrawer/buffalo_page.dart';
import 'package:login/screens/appDrawer/cow_page.dart';
import 'package:login/screens/appDrawer/goat_page.dart';
import 'package:login/screens/appDrawer/hen_page.dart';
import 'package:login/screens/appDrawer/pig_page.dart';
import 'package:login/screens/home/feeds_page.dart';
import 'package:login/widget/backgroundImage.dart';
import 'package:login/widget/widgets.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  int tabIndex = 0;
  var currentIndex = 0;
  int index = 0;
  List<Widget> list = [
    CowPage(),
    BuffaloPage(),
    GoatPage(),
    PigPage(),
    BeePage(),
    HenPage(),
  ];

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
              child: Builder(
                builder: (context) => IconButton(
                  icon: Icon(Icons.apps),
                  onPressed: () => Scaffold.of(context).openDrawer(),
                ),
              ),
            ),
            titleSpacing: 0,
            title: Padding(
              padding: const EdgeInsets.all(56),
              child: Text(
                "CrowdFarming",
                style: kBodyText,
                textScaleFactor: 1,
              ),
            ),
            actions: [
              IconButton(
                icon: Icon(Icons.notifications),
                onPressed: () {},
              ),
            ],
          ),
          drawer: Container(
            width: MediaQuery.of(context).size.width / 1.25,
            child: Drawer(
              child: Container(
                color: Colors.grey[100]!.withOpacity(0.5),
                child: Column(
                  children: <Widget>[
                    SizedBox(
                      height: 30,
                    ),
                    DrawerHeader(
                      child: Container(
                        margin: EdgeInsets.all(15),
                        height: 150,
                        width: 150,
                        decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          image: DecorationImage(
                            image: AssetImage('assets/farm.png'),
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: SizedBox(
                        child: ListTile(
                          title: Text(
                            "Cow Farming",
                            textAlign: TextAlign.center,
                            style: kDrawer,
                            textScaleFactor: 1,
                          ),
                          onTap: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => CowPage(),
                                ));
                          },
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: SizedBox(
                        child: ListTile(
                          title: Text(
                            "Buffalo Farming",
                            textAlign: TextAlign.center,
                            style: kDrawer,
                            textScaleFactor: 1,
                          ),
                          onTap: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => BuffaloPage(),
                              ),
                            );
                          },
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: SizedBox(
                        child: ListTile(
                          title: Text(
                            "Goat Farming",
                            textAlign: TextAlign.center,
                            style: kDrawer,
                            textScaleFactor: 1,
                          ),
                          onTap: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => GoatPage(),
                              ),
                            );
                          },
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: SizedBox(
                        child: ListTile(
                          title: Text(
                            "Pig Farming",
                            textAlign: TextAlign.center,
                            style: kDrawer,
                            textScaleFactor: 1,
                          ),
                          onTap: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => PigPage(),
                              ),
                            );
                          },
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: SizedBox(
                        child: ListTile(
                          title: Text(
                            "Honey Bees",
                            textAlign: TextAlign.center,
                            style: kDrawer,
                            textScaleFactor: 1,
                          ),
                          onTap: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => BeePage(),
                              ),
                            );
                          },
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: SizedBox(
                        child: ListTile(
                          title: Text(
                            "Poultry",
                            textAlign: TextAlign.center,
                            style: kDrawer,
                            textScaleFactor: 1,
                          ),
                          onTap: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => HenPage(),
                              ),
                            );
                          },
                        ),
                      ),
                    ),
                    Expanded(
                      child: Align(
                        alignment: Alignment.bottomCenter,
                        child: Container(
                          color: Colors.grey[100]!.withOpacity(0.5),
                          height: 65,
                          width: MediaQuery.of(context).size.width,
                          child: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Center(
                              child: Text(
                                '@AnkithAryan',
                                style: kDrawer,
                                textAlign: TextAlign.center,
                                textScaleFactor: 1,
                              ),
                            ),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
          body: SingleChildScrollView(
            child: Column(
              children: [
                SizedBox(
                  height: 3,
                ),
                Padding(
                  padding: const EdgeInsets.only(right: 258),
                  child: Text(
                    'Overview',
                    style: kBodyText,
                  ),
                ),
                SizedBox(
                  height: 2,
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Container(
                    padding: EdgeInsets.all(30),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.all(Radius.circular(10)),
                      color: Colors.grey[100]!.withOpacity(0.5),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.grey[100]!.withOpacity(0.5),
                          blurRadius: 10.0,
                        ),
                      ],
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "95,000",
                              style: kamount,
                            ),
                            SizedBox(
                              height: 8,
                            ),
                            Text(
                              "My Investments",
                              style: kamount,
                            ),
                          ],
                        ),
                        Container(
                          height: 60,
                          width: 60,
                          decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            color: Colors.teal,
                          ),
                          child: Icon(
                            Icons.add,
                            size: 30,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                Feeds(0),
                Feeds(1),
                Feeds(2),
                Feeds(3),
                Feeds(4),
                Feeds(5),
              ],
            ),
          ),
        ),
      ],
    );
  }
}

Feeds(int index) {
  return Container(
    margin: EdgeInsets.all(15),
    height: 500,
    decoration: BoxDecoration(
      borderRadius: BorderRadius.circular(10),
    ),
    child: Column(
      children: <Widget>[
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            Container(
              height: 50,
              width: 50,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(40),
                border: Border.all(
                  width: 3,
                  color: Colors.teal.withOpacity(0.5),
                ),
              ),
              child: Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(40),
                  image: DecorationImage(
                      image: AssetImage(feed[index].imageUrl),
                      fit: BoxFit.cover),
                ),
              ),
            ),
            Expanded(
              child: Padding(
                padding: const EdgeInsets.only(left: 8),
                child: Text(
                  feed[index].app,
                  style: kfeed,
                ),
              ),
            ),
            Text(
              feed[index].timePosted,
              style: kfeed,
            )
          ],
        ),
        Container(
          margin: EdgeInsets.only(top: 10),
          height: 300,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20),
            image: DecorationImage(
              image: AssetImage(feed[index].postUrl),
              fit: BoxFit.cover,
            ),
          ),
        ),
        Container(
          height: 50,
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 10),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: [
                    Icon(
                      Icons.favorite,
                      color: Colors.red,
                      size: 25,
                    ),
                    SizedBox(
                      width: 5,
                    ),
                    Text(
                      feed[index].likes,
                      style: kfeed,
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    Icon(
                      Icons.comment,
                      color: Colors.white,
                      size: 25,
                    ),
                    SizedBox(
                      width: 5,
                    ),
                    Text(
                      feed[index].comments,
                      style: kfeed,
                    ),
                  ],
                ),
                Row(
                  children: [
                    Icon(
                      Icons.share,
                      color: Colors.white,
                      size: 25,
                    ),
                    SizedBox(
                      width: 5,
                    ),
                    Text(
                      feed[index].shared,
                      style: kfeed,
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
        Container(
          height: 70,
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 15),
            child: Text(
              feed[index].description,
              style: kfeed,
            ),
          ),
        ),
      ],
    ),
  );
}
