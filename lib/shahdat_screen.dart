import 'package:flutter/material.dart';
import 'package:muslim_prayer_pro/utilities_screen.dart';

class ShahadatScreen extends StatefulWidget {
  const ShahadatScreen({Key? key}) : super(key: key);

  @override
  _ShahadatScreenState createState() => _ShahadatScreenState();
}

class _ShahadatScreenState extends State<ShahadatScreen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.red.shade900,
          title: Text(" S H A H A D A T"),
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

              ///Believing in God///

              MyUtilities.listTileofPillars(
                  "Believing in God",
                  "his is tile number 1 Trailing expansion arrow icon Trailing"
                      ' expansion arrow icon Trailing expansion arrow icon Trailing expansion arrow ic'
                      'on Trailing expansion arrow icon Trailing expansion arrow icon Trailing expansion arrow icon Trailing expansion arrow icon'
                      ' Trailing expansion arrow icon Trailing expan',
                  "وہ چیزیں جو نماز کو باطل کرتی ہیں وہ چیزیں جو نماز کو باطل کرتی ہیں"),
              MyUtilities.singleHeightContainer(),

              ///Believing in Prophets///
              MyUtilities.listTileofPillars(
                  "Believing in Prophets",
                  "his is tile number 1 Trailing expansion arrow icon Trailing"
                      ' expansion arrow icon Trailing expansion arrow icon Trailing expansion arrow ic'
                      'on Trailing expansion arrow icon Trailing expansion arrow icon Trailing expansion arrow icon Trailing expansion arrow icon'
                      ' Trailing expansion arrow icon Trailing expan',
                  "وہ چیزیں جو نماز کو باطل کرتی ہیں وہ چیزیں جو نماز کو باطل کرتی ہیں"),
              MyUtilities.singleHeightContainer(),

              ///Believing in Holy Books///
              MyUtilities.listTileofPillars(
                  "Believing in Holy Books",
                  "his is tile number 1 Trailing expansion arrow icon Trailing"
                      ' expansion arrow icon Trailing expansion arrow icon Trailing expansion arrow ic'
                      'on Trailing expansion arrow icon Trailing expansion arrow icon Trailing expansion arrow icon Trailing expansion arrow icon'
                      ' Trailing expansion arrow icon Trailing expan',
                  "وہ چیزیں جو نماز کو باطل کرتی ہیں وہ چیزیں جو نماز کو باطل کرتی ہیں"),
              MyUtilities.singleHeightContainer(),

              ///Believing in Angels///
              MyUtilities.listTileofPillars(
                  "Believing in Angels",
                  "his is tile number 1 Trailing expansion arrow icon Trailing"
                      ' expansion arrow icon Trailing expansion arrow icon Trailing expansion arrow ic'
                      'on Trailing expansion arrow icon Trailing expansion arrow icon Trailing expansion arrow icon Trailing expansion arrow icon'
                      ' Trailing expansion arrow icon Trailing expan',
                  "وہ چیزیں جو نماز کو باطل کرتی ہیں وہ چیزیں جو نماز کو باطل کرتی ہیں"),
              MyUtilities.singleHeightContainer(),

              ///Believing in Judgement Day///
              MyUtilities.listTileofPillars(
                  "Believing in Judgement Day",
                  "his is tile number 1 Trailing expansion arrow icon Trailing"
                      ' expansion arrow icon Trailing expansion arrow icon Trailing expansion arrow ic'
                      'on Trailing expansion arrow icon Trailing expansion arrow icon Trailing expansion arrow icon Trailing expansion arrow icon'
                      ' Trailing expansion arrow icon Trailing expan',
                  "وہ چیزیں جو نماز کو باطل کرتی ہیں وہ چیزیں جو نماز کو باطل کرتی ہیں"),
              MyUtilities.singleHeightContainer(),

              ///Believing in Fate///
              MyUtilities.listTileofPillars(
                  "Believing in Fate",
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
