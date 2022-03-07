import 'package:flutter/material.dart';
import 'package:muslim_prayer_pro/utilities_screen.dart';

class RozaScreen extends StatefulWidget {
  const RozaScreen({Key? key}) : super(key: key);

  @override
  _RozaScreenState createState() => _RozaScreenState();
}

class _RozaScreenState extends State<RozaScreen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            appBar: AppBar(
              backgroundColor: Colors.red.shade900,
              title: Text(" R O Z A"),
              centerTitle: true,
            ),
            body:SingleChildScrollView(
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

                  ///Things to Avoid///

                  MyUtilities.listTileofPillars(
                      "Things to Avoid",
                      "his is tile number 1 Trailing expansion arrow icon Trailing"
                          ' expansion arrow icon Trailing expansion arrow icon Trailing expansion arrow ic'
                          'on Trailing expansion arrow icon Trailing expansion arrow icon Trailing expansion arrow icon Trailing expansion arrow icon'
                          ' Trailing expansion arrow icon Trailing expan',
                      "وہ چیزیں جو نماز کو باطل کرتی ہیں وہ چیزیں جو نماز کو باطل کرتی ہیں"),
                  MyUtilities.singleHeightContainer(),

                  ///Haram Fast///
                  MyUtilities.listTileofPillars(
                      "Haram Fast",
                      "his is tile number 1 Trailing expansion arrow icon Trailing"
                          ' expansion arrow icon Trailing expansion arrow icon Trailing expansion arrow ic'
                          'on Trailing expansion arrow icon Trailing expansion arrow icon Trailing expansion arrow icon Trailing expansion arrow icon'
                          ' Trailing expansion arrow icon Trailing expan',
                      "وہ چیزیں جو نماز کو باطل کرتی ہیں وہ چیزیں جو نماز کو باطل کرتی ہیں"),
                  MyUtilities.singleHeightContainer(),

                  ///Person Exempted from Fast///
                  MyUtilities.listTileofPillars(
                      "Person Exempted from Fast",
                      "his is tile number 1 Trailing expansion arrow icon Trailing"
                          ' expansion arrow icon Trailing expansion arrow icon Trailing expansion arrow ic'
                          'on Trailing expansion arrow icon Trailing expansion arrow icon Trailing expansion arrow icon Trailing expansion arrow icon'
                          ' Trailing expansion arrow icon Trailing expan',
                      "وہ چیزیں جو نماز کو باطل کرتی ہیں وہ چیزیں جو نماز کو باطل کرتی ہیں"),
                  MyUtilities.singleHeightContainer(),

                  ///Things Invalidating Fast///
                  MyUtilities.listTileofPillars(
                      "Things Invalidating Fast",
                      "his is tile number 1 Trailing expansion arrow icon Trailing"
                          ' expansion arrow icon Trailing expansion arrow icon Trailing expansion arrow ic'
                          'on Trailing expansion arrow icon Trailing expansion arrow icon Trailing expansion arrow icon Trailing expansion arrow icon'
                          ' Trailing expansion arrow icon Trailing expan',
                      "وہ چیزیں جو نماز کو باطل کرتی ہیں وہ چیزیں جو نماز کو باطل کرتی ہیں"),
                  MyUtilities.singleHeightContainer(),

                  ///Traveler in Ramadan///
                  MyUtilities.listTileofPillars(
                      "Traveler in Ramadan",
                      "his is tile number 1 Trailing expansion arrow icon Trailing"
                          ' expansion arrow icon Trailing expansion arrow icon Trailing expansion arrow ic'
                          'on Trailing expansion arrow icon Trailing expansion arrow icon Trailing expansion arrow icon Trailing expansion arrow icon'
                          ' Trailing expansion arrow icon Trailing expan',
                      "وہ چیزیں جو نماز کو باطل کرتی ہیں وہ چیزیں جو نماز کو باطل کرتی ہیں"),
                  MyUtilities.singleHeightContainer(),

                  ///Fasting for Sick Person///
                  MyUtilities.listTileofPillars(
                      "Fasting for Sick Person",
                      "his is tile number 1 Trailing expansion arrow icon Trailing"
                          ' expansion arrow icon Trailing expansion arrow icon Trailing expansion arrow ic'
                          'on Trailing expansion arrow icon Trailing expansion arrow icon Trailing expansion arrow icon Trailing expansion arrow icon'
                          ' Trailing expansion arrow icon Trailing expan',
                      "وہ چیزیں جو نماز کو باطل کرتی ہیں وہ چیزیں جو نماز کو باطل کرتی ہیں"),
                  MyUtilities.singleHeightContainer(),
///Kafara///
                  MyUtilities.listTileofPillars(
                      "Kafara",
                      "his is tile number 1 Trailing expansion arrow icon Trailing"
                          ' expansion arrow icon Trailing expansion arrow icon Trailing expansion arrow ic'
                          'on Trailing expansion arrow icon Trailing expansion arrow icon Trailing expansion arrow icon Trailing expansion arrow icon'
                          ' Trailing expansion arrow icon Trailing expan',
                      "وہ چیزیں جو نماز کو باطل کرتی ہیں وہ چیزیں جو نماز کو باطل کرتی ہیں"),
                  MyUtilities.singleHeightContainer(),
                ],
              ),
            ))
    );
  }
}
