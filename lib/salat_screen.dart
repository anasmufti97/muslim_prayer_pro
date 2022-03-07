import 'package:flutter/material.dart';
import 'package:muslim_prayer_pro/utilities_screen.dart';

class SalatScreen extends StatefulWidget {
  const SalatScreen({Key? key}) : super(key: key);

  @override
  _SalatScreenState createState() => _SalatScreenState();
}

class _SalatScreenState extends State<SalatScreen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            appBar: AppBar(
              backgroundColor: Colors.red.shade900,
              title: Text(" S A L A H"),
              centerTitle: true,
            ),
            body: SingleChildScrollView(
              child: Column(
                children: [
                  ///introduction///

                  MyUtilities.listTileofPillars(
                      "Introduction",
                      "his is tile number 1 Trailing expansion arrow icon Trailing"
                          ' expansion arrow icon Trailing expansion arrow icon Trailing expansion arrow ic'
                          'on Trailing expansion arrow icon Trailing expansion arrow icon Trailing expansion arrow icon Trailing expansion arrow icon'
                          ' Trailing expansion arrow icon Trailing expan',
                      "وہ چیزیں جو نماز کو باطل کرتی ہیں وہ چیزیں جو نماز کو باطل کرتی ہیں"),
                  MyUtilities.singleHeightContainer(),

                  ///Types of Salah/Prayer///

                  MyUtilities.listTileofPillars(
                      "Types of Salah/Prayer",
                      "his is tile number 1 Trailing expansion arrow icon Trailing"
                          ' expansion arrow icon Trailing expansion arrow icon Trailing expansion arrow ic'
                          'on Trailing expansion arrow icon Trailing expansion arrow icon Trailing expansion arrow icon Trailing expansion arrow icon'
                          ' Trailing expansion arrow icon Trailing expan',
                      "وہ چیزیں جو نماز کو باطل کرتی ہیں وہ چیزیں جو نماز کو باطل کرتی ہیں"),
                  MyUtilities.singleHeightContainer(),

                  ///Daily Prayers Rakaats///
                  MyUtilities.listTileofPillars(
                      "Daily Prayers Rakaats",
                      "his is tile number 1 Trailing expansion arrow icon Trailing"
                          ' expansion arrow icon Trailing expansion arrow icon Trailing expansion arrow ic'
                          'on Trailing expansion arrow icon Trailing expansion arrow icon Trailing expansion arrow icon Trailing expansion arrow icon'
                          ' Trailing expansion arrow icon Trailing expan',
                      "وہ چیزیں جو نماز کو باطل کرتی ہیں وہ چیزیں جو نماز کو باطل کرتی ہیں"),
                  MyUtilities.singleHeightContainer(),

                  ///Rules of Qibla///
                  MyUtilities.listTileofPillars(
                      "Rules of Qibla",
                      "his is tile number 1 Trailing expansion arrow icon Trailing"
                          ' expansion arrow icon Trailing expansion arrow icon Trailing expansion arrow ic'
                          'on Trailing expansion arrow icon Trailing expansion arrow icon Trailing expansion arrow icon Trailing expansion arrow icon'
                          ' Trailing expansion arrow icon Trailing expan',
                      "وہ چیزیں جو نماز کو باطل کرتی ہیں وہ چیزیں جو نماز کو باطل کرتی ہیں"),
                  MyUtilities.singleHeightContainer(),

                  ///Condition for Dress///
                  MyUtilities.listTileofPillars(
                      "Condition for Dress",
                      "his is tile number 1 Trailing expansion arrow icon Trailing"
                          ' expansion arrow icon Trailing expansion arrow icon Trailing expansion arrow ic'
                          'on Trailing expansion arrow icon Trailing expansion arrow icon Trailing expansion arrow icon Trailing expansion arrow icon'
                          ' Trailing expansion arrow icon Trailing expan',
                      "وہ چیزیں جو نماز کو باطل کرتی ہیں وہ چیزیں جو نماز کو باطل کرتی ہیں"),
                  MyUtilities.singleHeightContainer(),

                  ///Makroo Things///
                  MyUtilities.listTileofPillars(
                      "Makroo Things",
                      "his is tile number 1 Trailing expansion arrow icon Trailing"
                          ' expansion arrow icon Trailing expansion arrow icon Trailing expansion arrow ic'
                          'on Trailing expansion arrow icon Trailing expansion arrow icon Trailing expansion arrow icon Trailing expansion arrow icon'
                          ' Trailing expansion arrow icon Trailing expan',
                      "وہ چیزیں جو نماز کو باطل کرتی ہیں وہ چیزیں جو نماز کو باطل کرتی ہیں"),
                  MyUtilities.singleHeightContainer(),

                  ///Things which make namaz Void///
                  MyUtilities.listTileofPillars(
                      "Things which make namaz Void",
                      "his is tile number 1 Trailing expansion arrow icon Trailing"
                          ' expansion arrow icon Trailing expansion arrow icon Trailing expansion arrow ic'
                          'on Trailing expansion arrow icon Trailing expansion arrow icon Trailing expansion arrow icon Trailing expansion arrow icon'
                          ' Trailing expansion arrow icon Trailing expan',
                      "وہ چیزیں جو نماز کو باطل کرتی ہیں وہ چیزیں جو نماز کو باطل کرتی ہیں"),
                  MyUtilities.singleHeightContainer(),

                  ///The Benifits of Salat ///
                  MyUtilities.listTileofPillars(
                      "The Benifits of Salat ",
                      "his is tile number 1 Trailing expansion arrow icon Trailing"
                          ' expansion arrow icon Trailing expansion arrow icon Trailing expansion arrow ic'
                          'on Trailing expansion arrow icon Trailing expansion arrow icon Trailing expansion arrow icon Trailing expansion arrow icon'
                          ' Trailing expansion arrow icon Trailing expan',
                      "وہ چیزیں جو نماز کو باطل کرتی ہیں وہ چیزیں جو نماز کو باطل کرتی ہیں"),
                  MyUtilities.singleHeightContainer(),
                ],
              ),
            )));
  }
}
