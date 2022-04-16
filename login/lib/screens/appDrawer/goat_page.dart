import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:login/widget/backgroundImage.dart';
import 'package:login/widget/widgets.dart';

class GoatPage extends StatefulWidget {
  const GoatPage({ Key? key }) : super(key: key);

  @override
  _GoatPageState createState() => _GoatPageState();
}

class _GoatPageState extends State<GoatPage> {
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
          ),
          body: SingleChildScrollView(
            scrollDirection: Axis.vertical,
            child: Padding(
              padding: const EdgeInsets.only(left: 10, top: 20),
              child: Column(
                children: [
                  SizedBox(
                    height: 115,
                    width: 115,
                    child: Stack(
                      fit: StackFit.expand,
                      children: [
                        CircleAvatar(
                          backgroundImage: AssetImage('assets/goat.png'),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 18,
                  ),
                  Text(
                    'Cow',
                    style: kBodyText,
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Container(
                    height: 30,
                    width: 100,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(5),
                      color: Colors.teal[100]!.withOpacity(0.8),
                    ),
                    child: Center(
                        child: TextButton(
                      style: TextButton.styleFrom(
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10),
                        ),
                      ),
                      onPressed: () {
                          showDialog(
                            context: context,
                            builder: (BuildContext context) {
                              return Invest();
                            });
                      },
                      child: Text(
                        'Invest',
                        style: kamount,
                      ),
                    )),
                  ),
                  SizedBox(
                    height: 18,
                  ),
                  Text(
                    "About Our Animal",
                    style: kText,
                  ),
                  SizedBox(
                    height: 15,
                  ),
                  SizedBox(
                    height: 95,
                    width: 95,
                    child: Stack(
                      fit: StackFit.expand,
                      children: [
                        CircleAvatar(
                          backgroundImage: AssetImage('assets/breed/kanni.png'),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Text(
                    'Kanni Goat',
                    style: kfeed,
                  ),
                  SizedBox(
                    height: 18,
                  ),
                  Text(
                    'Kanni found in Tamil Nadu have a black coat, having horns of 15-20cm. Avarage height of male is 81.46cm with weight 34.05kg while female is 74.83cm and weight 28.17kg. Female & male is used for red meat as there growth rate is faster.',
                    style: kBodyText,
                  ),
                  SizedBox(
                    height: 15,
                  ),
                  SizedBox(
                    height: 95,
                    width: 95,
                    child: Stack(
                      fit: StackFit.expand,
                      children: [
                        CircleAvatar(
                          backgroundImage: AssetImage('assets/breed/osmanabadi.png'),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Text(
                    'Osmanabadi Goat',
                    style: kfeed,
                  ),
                  SizedBox(
                    height: 18,
                  ),
                  Text(
                    'Osmanabadi found in Maharashatra have a glossy black coat, having straight horns of 13cm. Avarage height of male is 77cm with weight 74kg while female is 53cm and weight 48kg. Female cow produce 40kg milk per lactation with 8.34% of milk fat while male is used for red meat.',
                    style: kBodyText,
                  ),
                  SizedBox(
                    height: 22,
                  )
                ],
              ),
            ),
          ),
        ),
      ],
    );
  }
}
class Invest extends StatelessWidget {
  const Invest({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return CupertinoAlertDialog(
      title: Text('Select Breed For Investment'),
      actions: [
        CupertinoDialogAction(
          child: OutlinedButton(
            onPressed: () {
            },
            child: Text(
              'Kanni',
              style: GoogleFonts.roboto(
                fontSize: 16,
                color: Colors.black,
                fontWeight: FontWeight.bold,
              ),
            ),
            style: OutlinedButton.styleFrom(
                side: BorderSide(color: Colors.black, width: 1),
                padding: EdgeInsets.symmetric(horizontal: 34, vertical: 15),
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10))),
          ),
        ),
        CupertinoDialogAction(
          child: ElevatedButton(
            onPressed: () {},
            child: Text(
              'Osmanabadi',
              style: GoogleFonts.roboto(
                fontSize: 16,
                color: Colors.black,
                fontWeight: FontWeight.bold,
              ),
            ),
            style: ElevatedButton.styleFrom(
                primary: Colors.teal[200]!.withOpacity(0.5),
                padding: EdgeInsets.symmetric(horizontal: 32, vertical: 15),
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10))),
          ),
        ),
      ],
    );
  }
}
