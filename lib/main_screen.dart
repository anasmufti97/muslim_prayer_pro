import 'package:flutter/material.dart';
import 'package:hijri/hijri_calendar.dart';
import 'package:intl/intl.dart';
import 'package:get/get.dart';
import 'package:muslim_prayer_pro/audio_screen.dart';
import 'package:muslim_prayer_pro/compass_practice.dart';
import 'package:muslim_prayer_pro/date_converter_screen.dart';
import 'package:muslim_prayer_pro/language_change_screen.dart';
import 'package:muslim_prayer_pro/names_screen.dart';
import 'package:muslim_prayer_pro/prayer_time_duplicate.dart';
import 'hadith_screen.dart';
import 'pilars_screen.dart';
import 'quran.dart';
import 'supplications_screen.dart';
import 'tasbeeh_screen.dart';

class MainScreen extends StatefulWidget {
  const MainScreen({Key? key}) : super(key: key);

  @override
  _MainScreenState createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  var _today = HijriCalendar.now();
  var h_date = HijriCalendar.fromDate(DateTime(2018, 11, 12));
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(

        appBar: AppBar(
          title: const Text(" Quran App"),
          centerTitle: true,
          backgroundColor: Colors.red.shade900,
          actions:[
            Icon(
              Icons.settings,
              size: 25,
            ),
            InkWell(

              onTap: (){

                Get.to( LanguageChangeScreen());
              },
              child: Padding(
                padding: EdgeInsets.symmetric(horizontal: 10.0),
                child: Icon(
                  Icons.language_outlined,
                  size: 25,
                ),
              ),
            ),
          ],
        ),
        drawer: SizedBox(

          width:Get.width*0.7,
          child: Drawer(

            child: Container(

              child :Column(
                children: [
                  Container(height:57,
                  color: Colors.red.shade900,
                  width: Get.width,
                  child: Padding(
                    padding: const EdgeInsets.only(left: 20.0),
                    child: InkWell(
                        onTap: (){
                          Navigator.pop(context);
                        },
                        child: const Align(
                            alignment: Alignment.centerLeft,
                            child: Icon(Icons.arrow_back_ios_outlined))),
                  ),),
                  drawerRow(drawerText:"Instruction",drawerIcon: Icons.integration_instructions_outlined ),
                  drawerRow(drawerText: "Feed back" ,drawerIcon: Icons.feedback),
                  drawerRow(drawerText: "About Us",drawerIcon: Icons.messenger_outline),
                  drawerRow(drawerText: "Rate App",drawerIcon: Icons.star_rate_outlined),
                  drawerRow(drawerText: "Share App",drawerIcon: Icons.share),
                  drawerRow(drawerText:"More Apps",drawerIcon: Icons.more_horiz_outlined),
                  drawerRow(drawerText: "Exit" ,drawerIcon: Icons.exit_to_app),


                ],
              ),

              color: Colors.grey.shade300,
            ),
          ),
        ),
        body: Stack(
          children: [
            Container(
              height: Get.height,
              color: Colors.grey,
              width: Get.width,
              child: Image.asset(
                "assets/images/backgroundImage.jpg",
                fit: BoxFit.fill,
              ),
            ),
            Row(
              children: [
                Expanded(
                    child: Column(
                      children: [
                        Image.asset("assets/images/—Pngtree—quran kareem beautiful calligraphy_6128995.png"),
                        Expanded(child: Container()),
                        Text(
                            DateFormat('EEEE')
                                .format(DateTime.now()),
                            style: TextStyle(
                                fontSize: 24,
                                color: Colors.green.withOpacity(0.8),)),

                        const SizedBox(
                          height: 10,
                        ),
                        Text(
                            DateFormat('MMMM   dd , yyyy')
                                .format(DateTime.now()),
                            style: TextStyle(
                                fontSize:22,
                                color: Colors.green.withOpacity(0.8),
                               )),
                        const SizedBox(
                          height: 30,
                        ),
                        Text("${_today.hDay}   ${h_date.getLongMonthName()}",
                            style: TextStyle(
                                fontSize:24,
                                color: Colors.lightGreenAccent,
                                fontWeight: FontWeight.bold)),
                        const SizedBox(
                          height: 10,
                        ),
                        Text("${_today.hYear} ",
                            style: TextStyle(
                                fontSize: 23,
                                color: Colors.lightGreenAccent,
                                fontWeight: FontWeight.bold)),
                        const SizedBox(
                          height: 30,
                        ),
                      ],
                    )),
                SizedBox(
                    width: Get.width * 0.3,
                    child: SingleChildScrollView(
                      child: Column(
                        children: [
                          InkWell(
                              onTap: () {
                                Get.to(const PrayerTimeDuplicateScreen());
                              },
                              child: scrollContainer("Time")),
                          InkWell(
                              onTap: (){
                                Get.to(QuranScreen());

                              },
                              child: scrollContainer("Quran")),
                          InkWell(

                              onTap: (){
                                Get.to(HadithScreen());

                              },
                              child: scrollContainer("Hadith")),
                          InkWell(
                              onTap: (){
                                Get.to(SupplicationsScreen());
                              },
                              child: scrollContainer("Suppli")),
                          InkWell(
                              onTap: (){

                                Get.to(NamesScreen());
                              },

                              child: scrollContainer("Names")),
                          InkWell(
                              onTap: (){
                                Get.to(PilarsScreen());
                              },

                              child: scrollContainer("Pilars")),
                          InkWell(
                              onTap: (){

                                Get.to(QiblaCompass());
                              },
                              child: scrollContainer("Compas")),
                          InkWell(
                              onTap:(){
                                Get.to(const TasbeehCounterScreen());
                                },
                              child: scrollContainer("Tasbeeh")),
                          scrollContainer("Finder"),
                          InkWell(
                              onTap: (){
                                Get.to(DateConverterScreen());
                              },
                              child: scrollContainer("Date ")),
                          InkWell(
                              onTap: (){
                                // Get.to(MyHomePage(title: 'anas',));

                              },
                              child: scrollContainer("Calender")),
                          InkWell(
                              onTap: (){


                                // Get.to(AudioScreen());
                              },
                              child: scrollContainer("Ramdan")),
                        ],
                      ),
                    )),
              ],
            ),
          ],
        ),

      ),
    );
  }
}

Widget scrollContainer(String scrollContainerText) {
  return Padding(
      padding: const EdgeInsets.only(top:13.0),
      child: CircleAvatar(
        radius: 36,
        backgroundColor: Colors.red.withOpacity(0.3),
        child: Center(child: Text(scrollContainerText ,style: const TextStyle(
          color: Colors.white
        ),)),
      ));
}




Widget drawerRow(
    {String drawerText = "Feed Back",
    IconData drawerIcon =Icons.feedback }){

  return Padding(
    padding: const EdgeInsets.all(10.0),
    child: Padding(
      padding: const EdgeInsets.symmetric(vertical: 5.0,horizontal: 10),
      child: Row(
mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children:[

          Text(drawerText,style: const TextStyle(
              color: Colors.green,fontSize: 16
          ),),
          Icon(drawerIcon,color: Colors.green,size: 24,),


        ],),
    ),
  );


}

/*
Container(
child: Column(
children: [
Center(
child: Container(
width: 190,
color: Colors.grey,
child: Column(
children: [
Text(DateFormat('MMMM  dd,yyyy   EEEE').format(DateTime.now())),
Text(DateFormat('KK:mm a').format(DateTime.now())),
],
),

),
),
],
),
),
*/
