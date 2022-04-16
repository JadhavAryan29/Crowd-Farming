import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:login/widget/backgroundImage.dart';
import 'package:login/widget/widgets.dart';

class BuffaloPage extends StatefulWidget {
  const BuffaloPage({ Key? key }) : super(key: key);

  @override
  _BuffaloPageState createState() => _BuffaloPageState();
}

class _BuffaloPageState extends State<BuffaloPage> {
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
                          backgroundImage: AssetImage('assets/yak.png'),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 18,
                  ),
                  Text(
                    'Buffalo',
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
                          backgroundImage: AssetImage('assets/breed/pandharpuri.png'),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Text(
                    'Pandharpuri Buffalo',
                    style: kfeed,
                  ),
                  SizedBox(
                    height: 18,
                  ),
                  Text(
                    'Pandharpuri found in Maharashatra have a black coat with with white marks on legs and tail, having very long horns. Avarage height of male is 140cm with weight 458kg while female is 130cm and weight 416kg. Female Buffalo produce 1790.6kg milk per lactation with 8.01% of milk fat while male is used for agriculture and genrating energy work',
                    style: kBodyText,
                  ),
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
              'Pandharpuri',
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
      ],
    );
  }
}
