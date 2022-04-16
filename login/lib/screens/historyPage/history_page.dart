import 'package:flutter/material.dart';
import 'package:login/widget/backgroundImage.dart';
import 'package:login/screens/historyPage/transaction_page.dart';
import 'package:login/widget/widgets.dart';

class HistoryPage extends StatefulWidget {
  const HistoryPage({Key? key}) : super(key: key);

  @override
  _HistoryPageState createState() => _HistoryPageState();
}

class _HistoryPageState extends State<HistoryPage> {
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
              padding: const EdgeInsets.all(56),
              child: Text(
                "CrowdFarming",
                style: kBodyText,
                textScaleFactor: 1,
              ),
            ),
            actions: [
              IconButton(
                icon: Icon(Icons.refresh),
                onPressed: () {},
              ),
            ],
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
                SizedBox(
                  height: 2,
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 5, left: 10),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'My Animal Purchase',
                        style: kBodyText,
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: 2,
                ),
                SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Padding(
                    padding: const EdgeInsets.all(7.0),
                    child: Row(
                      children: [
                        animalWidget('cow', 'Cow', '20,000'),
                        animalWidget('yak', 'Buffalo', '30,000'),
                        animalWidget('goat', 'Goat', '15,000'),
                        animalWidget('pig', 'Pig', '15,000'),
                        animalWidget('bee', 'HoneyBee', '10,000'),
                        animalWidget('hen', 'Chicken', '5,000'),
                      ],
                    ),
                  ),
                ),
                SizedBox(
                  height: 5,
                ),
                Padding(
                  padding: EdgeInsets.only(top: 5, right: 180),
                  child: Text(
                    'Transaction Histories',
                    style: kBodyText,
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                ListView.builder(
                  itemCount: transactions.length,
                  padding: EdgeInsets.only(left: 16, right: 16),
                  shrinkWrap: true,
                  itemBuilder: (context, index) {
                    return SingleChildScrollView(
                      scrollDirection: Axis.vertical,
                      child: Container(
                        height: 57,
                        margin: EdgeInsets.only(bottom: 13),
                        padding: EdgeInsets.only(
                          left: 2,
                          top: 12,
                          bottom: 12,
                          right: 22,
                        ),
                        decoration: BoxDecoration(
                          color: Colors.grey[100]!.withOpacity(0.5),
                          borderRadius: BorderRadius.circular(15),
                          boxShadow: [
                            BoxShadow(
                              color: Colors.grey[100]!.withOpacity(0.5),
                              blurRadius: 10.0,
                            ),
                          ],
                        ),
                        child: TransactionHistory(index),
                      ),
                    );
                  },
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }

  TransactionHistory(int index) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Row(
          children: [
            Container(
              height: 57,
              width: 57,
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                image: DecorationImage(
                  image: AssetImage(transactions[index].image),
                ),
              ),
            ),
            SizedBox(
              width: 5,
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  transactions[index].name,
                  style: kamount,
                ),
                Text(transactions[index].date),
              ],
            ),
          ],
        ),
        Row(
          children: [
            Text(
              transactions[index].amount,
              style: kamount,
            ),
          ],
        ),
      ],
    );
  }

  Container animalWidget(String img, String name, String amount) {
    return Container(
      margin: EdgeInsets.only(right: 10),
      height: 150,
      width: 120,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.all(Radius.circular(15)),
        color: Colors.grey[100]!.withOpacity(0.5),
        boxShadow: [
          BoxShadow(
            color: Colors.grey[100]!.withOpacity(0.5),
            blurRadius: 10.0,
          ),
        ],
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Container(
            height: 60,
            width: 60,
            decoration: BoxDecoration(
                shape: BoxShape.circle,
                color: Colors.white,
                image: DecorationImage(
                  image: AssetImage('assets/$img.png'),
                  fit: BoxFit.contain,
                ),
                border: Border.all(color: Colors.black, width: 2)),
          ),
          Text(name, style: kamount),
          Text(amount, style: kamount),
        ],
      ),
    );
  }
}
