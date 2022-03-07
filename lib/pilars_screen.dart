import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:muslim_prayer_pro/hajj_screen.dart';
import 'package:muslim_prayer_pro/utilities_screen.dart';

import 'roza_screen.dart';
import 'salat_screen.dart';
import 'shahdat_screen.dart';
import 'zakat_screen.dart';

class PilarsScreen extends StatefulWidget {
  const PilarsScreen({Key? key}) : super(key: key);

  @override
  _PilarsScreenState createState() => _PilarsScreenState();
}

class _PilarsScreenState extends State<PilarsScreen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
          body: Stack(
        children: [
          Container(
              width: Get.width,
              height: Get.height,
              color: Colors.red,
              child: Image.asset(
                "assets/images/pillars background.jpg",
                fit: BoxFit.fill,
              )),
          Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                SizedBox(
                  height: Get.height * 0.4,
                ),
                InkWell(
                    onTap: () {
                      Get.to(ShahadatScreen());
                    },
                    child: MyUtilities.pillarsFive("S H A H A D A T")),
                InkWell(
                    onTap: () {
                      Get.to(SalatScreen());
                    },
                    child: MyUtilities.pillarsFive(" S A L A H")),
                InkWell(
                    onTap: () {
                      Get.to(RozaScreen());
                    },
                    child: MyUtilities.pillarsFive(" R O Z A ")),
                InkWell(
                    onTap: () {
                      Get.to(const ZakatScreen());
                    },
                    child: MyUtilities.pillarsFive("Z A K A T")),
                InkWell(
                    onTap: () {
                      Get.to(HajjScreen());
                    },
                    child: MyUtilities.pillarsFive("H A J J ")),
              ],
            ),
          ),
        ],
      )),
    );
  }
}
