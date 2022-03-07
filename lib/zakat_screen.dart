import 'package:flutter/material.dart';
import 'package:muslim_prayer_pro/utilities_screen.dart';

class ZakatScreen extends StatefulWidget {
  const ZakatScreen({Key? key}) : super(key: key);

  @override
  _ZakatScreenState createState() => _ZakatScreenState();
}

class _ZakatScreenState extends State<ZakatScreen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            appBar: AppBar(
              backgroundColor: Colors.red.shade900,
              title: Text("Z A K A T"),
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

                  ///Wealth on which zakat is Obligatory///

                  MyUtilities.listTileofPillars(
                      "Wealth on which zakat is Obligatory",
                      "his is tile number 1 Trailing expansion arrow icon Trailing"
                          ' expansion arrow icon Trailing expansion arrow icon Trailing expansion arrow ic'
                          'on Trailing expansion arrow icon Trailing expansion arrow icon Trailing expansion arrow icon Trailing expansion arrow icon'
                          ' Trailing expansion arrow icon Trailing expan',
                      "وہ چیزیں جو نماز کو باطل کرتی ہیں وہ چیزیں جو نماز کو باطل کرتی ہیں"),
                  MyUtilities.singleHeightContainer(),

                  ///Kinds of Wealth///
                  MyUtilities.listTileofPillars(
                      "Kinds of Wealth",
                      "his is tile number 1 Trailing expansion arrow icon Trailing"
                          ' expansion arrow icon Trailing expansion arrow icon Trailing expansion arrow ic'
                          'on Trailing expansion arrow icon Trailing expansion arrow icon Trailing expansion arrow icon Trailing expansion arrow icon'
                          ' Trailing expansion arrow icon Trailing expan',
                      "وہ چیزیں جو نماز کو باطل کرتی ہیں وہ چیزیں جو نماز کو باطل کرتی ہیں"),
                  MyUtilities.singleHeightContainer(),

                  ///Zakat Distribution///
                  MyUtilities.listTileofPillars(
                      "Zakat Distribution",
                      "his is tile number 1 Trailing expansion arrow icon Trailing"
                          ' expansion arrow icon Trailing expansion arrow icon Trailing expansion arrow ic'
                          'on Trailing expansion arrow icon Trailing expansion arrow icon Trailing expansion arrow icon Trailing expansion arrow icon'
                          ' Trailing expansion arrow icon Trailing expan',
                      "وہ چیزیں جو نماز کو باطل کرتی ہیں وہ چیزیں جو نماز کو باطل کرتی ہیں"),
                  MyUtilities.singleHeightContainer(),

                  ///Wealth which not applicable for zakaat///
                  MyUtilities.listTileofPillars(
                      "Wealth which not applicable for zakaat",
                      "his is tile number 1 Trailing expansion arrow icon Trailing"
                          ' expansion arrow icon Trailing expansion arrow icon Trailing expansion arrow ic'
                          'on Trailing expansion arrow icon Trailing expansion arrow icon Trailing expansion arrow icon Trailing expansion arrow icon'
                          ' Trailing expansion arrow icon Trailing expan',
                      "وہ چیزیں جو نماز کو باطل کرتی ہیں وہ چیزیں جو نماز کو باطل کرتی ہیں"),
                  MyUtilities.singleHeightContainer(),

                  ///Zakaat Recipient///
                  MyUtilities.listTileofPillars(
                      "Zakaat Recipient",
                      "his is tile number 1 Trailing expansion arrow icon Trailing"
                          ' expansion arrow icon Trailing expansion arrow icon Trailing expansion arrow ic'
                          'on Trailing expansion arrow icon Trailing expansion arrow icon Trailing expansion arrow icon Trailing expansion arrow icon'
                          ' Trailing expansion arrow icon Trailing expan',
                      "وہ چیزیں جو نماز کو باطل کرتی ہیں وہ چیزیں جو نماز کو باطل کرتی ہیں"),
                  MyUtilities.singleHeightContainer(),

                  ///Person who can not be given zakaa///
                  MyUtilities.listTileofPillars(
                      "Person who can not be given zakaa",
                      "his is tile number 1 Trailing expansion arrow icon Trailing"
                          ' expansion arrow icon Trailing expansion arrow icon Trailing expansion arrow ic'
                          'on Trailing expansion arrow icon Trailing expansion arrow icon Trailing expansion arrow icon Trailing expansion arrow icon'
                          ' Trailing expansion arrow icon Trailing expan',
                      "وہ چیزیں جو نماز کو باطل کرتی ہیں وہ چیزیں جو نماز کو باطل کرتی ہیں"),
                  MyUtilities.singleHeightContainer(),
                  ///Punishment for not offering zakaat///
                  MyUtilities.listTileofPillars(
                      "Punishment for not offering zakaat",
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
