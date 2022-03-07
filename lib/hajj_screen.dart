import 'package:flutter/material.dart';
import 'package:muslim_prayer_pro/utilities_screen.dart';

class HajjScreen extends StatefulWidget {
  const HajjScreen({Key? key}) : super(key: key);

  @override
  _HajjScreenState createState() => _HajjScreenState();
}

class _HajjScreenState extends State<HajjScreen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            appBar: AppBar(
              backgroundColor: Colors.red.shade900,
              title: Text(" H A J J "),
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

                  ///STEP 1///

                  MyUtilities.listTileofPillars(
                      "STEP 1: Enrtering in the state of Ahraam",
                      "his is tile number 1 Trailing expansion arrow icon Trailing"
                          ' expansion arrow icon Trailing expansion arrow icon Trailing expansion arrow ic'
                          'on Trailing expansion arrow icon Trailing expansion arrow icon Trailing expansion arrow icon Trailing expansion arrow icon'
                          ' Trailing expansion arrow icon Trailing expan',
                      "وہ چیزیں جو نماز کو باطل کرتی ہیں وہ چیزیں جو نماز کو باطل کرتی ہیں"),
                  MyUtilities.singleHeightContainer(),

                  ///STEP 2///
                  MyUtilities.listTileofPillars(
                      "STEP 2: Performing Umraah",
                      "his is tile number 1 Trailing expansion arrow icon Trailing"
                          ' expansion arrow icon Trailing expansion arrow icon Trailing expansion arrow ic'
                          'on Trailing expansion arrow icon Trailing expansion arrow icon Trailing expansion arrow icon Trailing expansion arrow icon'
                          ' Trailing expansion arrow icon Trailing expan',
                      "وہ چیزیں جو نماز کو باطل کرتی ہیں وہ چیزیں جو نماز کو باطل کرتی ہیں"),
                  MyUtilities.singleHeightContainer(),

                  ///STEP 3 ///
                  MyUtilities.listTileofPillars(
                      "STEP 3: Departure to Mina",
                      "his is tile number 1 Trailing expansion arrow icon Trailing"
                          ' expansion arrow icon Trailing expansion arrow icon Trailing expansion arrow ic'
                          'on Trailing expansion arrow icon Trailing expansion arrow icon Trailing expansion arrow icon Trailing expansion arrow icon'
                          ' Trailing expansion arrow icon Trailing expan',
                      "وہ چیزیں جو نماز کو باطل کرتی ہیں وہ چیزیں جو نماز کو باطل کرتی ہیں"),
                  MyUtilities.singleHeightContainer(),

                  /// STEP 4 ///
                  MyUtilities.listTileofPillars(
                      "STEP 4: Departure to Arafat",
                      "his is tile number 1 Trailing expansion arrow icon Trailing"
                          ' expansion arrow icon Trailing expansion arrow icon Trailing expansion arrow ic'
                          'on Trailing expansion arrow icon Trailing expansion arrow icon Trailing expansion arrow icon Trailing expansion arrow icon'
                          ' Trailing expansion arrow icon Trailing expan',
                      "وہ چیزیں جو نماز کو باطل کرتی ہیں وہ چیزیں جو نماز کو باطل کرتی ہیں"),
                  MyUtilities.singleHeightContainer(),

                  /// STEP 5  ///
                  MyUtilities.listTileofPillars(
                      "STEP 5: Departure to Muzdafila",
                      "his is tile number 1 Trailing expansion arrow icon Trailing"
                          ' expansion arrow icon Trailing expansion arrow icon Trailing expansion arrow ic'
                          'on Trailing expansion arrow icon Trailing expansion arrow icon Trailing expansion arrow icon Trailing expansion arrow icon'
                          ' Trailing expansion arrow icon Trailing expan',
                      "وہ چیزیں جو نماز کو باطل کرتی ہیں وہ چیزیں جو نماز کو باطل کرتی ہیں"),
                  MyUtilities.singleHeightContainer(),

                  ///STEP 6 ///
                  MyUtilities.listTileofPillars(
                      "STEP 6: Returning to Mina",
                      "his is tile number 1 Trailing expansion arrow icon Trailing"
                          ' expansion arrow icon Trailing expansion arrow icon Trailing expansion arrow ic'
                          'on Trailing expansion arrow icon Trailing expansion arrow icon Trailing expansion arrow icon Trailing expansion arrow icon'
                          ' Trailing expansion arrow icon Trailing expan',
                      "وہ چیزیں جو نماز کو باطل کرتی ہیں وہ چیزیں جو نماز کو باطل کرتی ہیں"),
                  MyUtilities.singleHeightContainer(),
                  ///STEP 7 ///
                  MyUtilities.listTileofPillars(
                      "STEP 7: Tawaf-al-Ifada",
                      "his is tile number 1 Trailing expansion arrow icon Trailing"
                          ' expansion arrow icon Trailing expansion arrow icon Trailing expansion arrow ic'
                          'on Trailing expansion arrow icon Trailing expansion arrow icon Trailing expansion arrow icon Trailing expansion arrow icon'
                          ' Trailing expansion arrow icon Trailing expan',
                      "وہ چیزیں جو نماز کو باطل کرتی ہیں وہ چیزیں جو نماز کو باطل کرتی ہیں"),
                  MyUtilities.singleHeightContainer(),


                  ///STEP 8 ///
                  MyUtilities.listTileofPillars(
                      "STEP 8: Returning to Mina( again )",
                      "his is tile number 1 Trailing expansion arrow icon Trailing"
                          ' expansion arrow icon Trailing expansion arrow icon Trailing expansion arrow ic'
                          'on Trailing expansion arrow icon Trailing expansion arrow icon Trailing expansion arrow icon Trailing expansion arrow icon'
                          ' Trailing expansion arrow icon Trailing expan',
                      "وہ چیزیں جو نماز کو باطل کرتی ہیں وہ چیزیں جو نماز کو باطل کرتی ہیں"),
                  MyUtilities.singleHeightContainer(),

///STEP 9 ///
                  MyUtilities.listTileofPillars(
                      "STEP 9: FareWell Tawaf",
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
