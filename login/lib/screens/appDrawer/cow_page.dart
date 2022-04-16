import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:login/widget/backgroundImage.dart';
import 'package:login/widget/widgets.dart';

class CowPage extends StatefulWidget {
  const CowPage({Key? key}) : super(key: key);

  @override
  _CowPageState createState() => _CowPageState();
}

class _CowPageState extends State<CowPage> {
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
                          backgroundImage: AssetImage('assets/cow.png'),
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
                          backgroundImage: AssetImage('assets/breed/dangi.png'),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Text(
                    'Dangi Cow',
                    style: kfeed,
                  ),
                  SizedBox(
                    height: 18,
                  ),
                  Text(
                    'Dangi found in Maharashatra have a white coat with red or black spots, having horns of 12-15cm. Avarage height of male is 117cm with weight 430kg while female is 113cm and weight 228kg. Female cow produce 430kg milk per lactation with 4.3% of milk fat while male is used for agriculture work in montain region.',
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
                          backgroundImage: AssetImage('assets/breed/ongole.png'),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Text(
                    'Ongole Cow',
                    style: kfeed,
                  ),
                  SizedBox(
                    height: 18,
                  ),
                  Text(
                    'Ongole found in Andra Pradesh have a glossy, having short and stumpy horns. Avarage height of male is 148cm with weight 434kg while female is 143cm and weight 382kg. Female cow produce 798kg milk per lactation with 3.79% of milk fat while male is used for agriculture work.',
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
              'Dangi',
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
              'Ongole',
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
