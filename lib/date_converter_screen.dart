import 'package:flutter/material.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_navigation/src/extension_navigation.dart';
import 'package:get/get_rx/src/rx_types/rx_types.dart';
import 'package:hijri/hijri_calendar.dart';
import 'package:muslim_prayer_pro/list_of_months_screen.dart';

class DateConverterScreen extends StatefulWidget {
  const DateConverterScreen({Key? key}) : super(key: key);

  @override
  _DateConverterScreenState createState() => _DateConverterScreenState();
}

class _DateConverterScreenState extends State<DateConverterScreen> {




  int english_year = 2022;
  int islamic_year = 1439;
  int english_month = 1;
  int islamic_month = 1;
  int english_day = 1;
  int islamic_day = 1;

  var h_date = HijriCalendar.fromDate(DateTime(1947, 8, 14));
  var g_date = HijriCalendar();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          actions:[InkWell(
            onTap: (){

              Get.to(ListOfMonthScreen());
            },
            child: Padding(
              padding: EdgeInsets.only(right: 6.0 ,top: 3),
              child: Icon(Icons.list ,size: 35,),
            ),
          )],
            title: Text("Date Converter"),
            centerTitle: true,
            backgroundColor: Colors.red.shade900),
        body: SingleChildScrollView(
          child: Container(
            color: Colors.white,
            height: Get.height,
            width: Get.width,
            child: Column(

              children: [


                Container(
                  height: Get.height*0.07,
                  width: Get.width,

                  decoration: BoxDecoration(
                      color: Colors.black,
                    border: Border.symmetric(horizontal: BorderSide(color: Colors.red ,width: 2))
                  ),
                  child: Center(
                    child: Text("Hijri  to  Gregorian",style: TextStyle(
                    color: Colors.red.shade800,
                    fontWeight: FontWeight.w500,
                    fontSize: 25,
                    fontStyle: FontStyle.italic

            ),),
                  ),
                ),
                Container(
                  height: Get.height * 0.16,
                  width: Get.width,
                  child: Padding(
                    padding: const EdgeInsets.all(15.0),
                    child: Row(
                      children: [
                        Expanded(
                          child: TextFormField(
                              decoration: InputDecoration(
                                  focusedBorder: OutlineInputBorder(
                                    borderSide: const BorderSide(
                                        color: Colors.red,
                                        width: 2.0),
                                    borderRadius: BorderRadius.circular(8.0),
                                  ),
                                  hintText: "1356-1500",
                                  border: OutlineInputBorder()),
                              maxLength: 4,
                              keyboardType: TextInputType.number,
                              onFieldSubmitted: (value) {
                                FocusScope.of(context).unfocus();
                                int.parse(value)<1356||int.parse(value)>1500?
                               Get.dialog(Column(
                                 mainAxisAlignment: MainAxisAlignment.center,
                                 children: [
                                   Container(
                                     color: Colors.white,
                                     height: Get.height*0.2,
                                     width:Get.width*0.7,
                                     child: Scaffold(
                                       body: Column(
                                         mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                         children: [
                                           Center(child: const Text("Invalid Input" ,style: TextStyle(
                                             color: Colors.red,
                                             fontSize: 28
                                           ),)),
                                           const Text("  The Value should be between ",style: TextStyle(
                                             color: Colors.black,
                                             fontSize: 18
                                           ),),
                                           Center(child: const Text("1356 to 1500" ,style: TextStyle(
                                               color: Colors.red,
                                               fontSize: 22
                                           ),)),
                                         ],
                                       ),
                                     ),
                                   ),
                                 ],
                               )): islamic_year=int.parse(value);

                                setState(() {});
                              }),
                        ),
                        SizedBox(
                          width: 10,
                        ),
                        Expanded(
                          child: TextFormField(
                              decoration: InputDecoration(
                                  focusedBorder: OutlineInputBorder(
                                    borderSide: const BorderSide(
                                        color: Colors.red,
                                        width: 2.0),
                                    borderRadius: BorderRadius.circular(8.0),
                                  ),
                                  hintText: "Month",
                                  border: OutlineInputBorder()),
                              maxLength: 2,
                              keyboardType: TextInputType.number,
                              onFieldSubmitted: (value) {
                                islamic_month=int.parse(value);
                                setState(() {});
                              }),
                        ),
                        SizedBox(
                          width: 10,
                        ),
                        Expanded(
                          child: TextFormField(
                              decoration: InputDecoration(
                                  focusedBorder: OutlineInputBorder(
                                    borderSide: const BorderSide(
                                        color: Colors.red,
                                        width: 2.0),
                                    borderRadius: BorderRadius.circular(8.0),
                                  ),
                                  hintText: "Day",
                                  border: OutlineInputBorder()),
                              maxLength: 2,
                              keyboardType: TextInputType.number,
                              onFieldSubmitted: (value) {
                                islamic_day=int.parse(value);

                                setState(() {});
                              }),
                        ),
                      ],
                    ),
                  ),
                ),
                SizedBox(
                  height:Get.height*0.08,
                ),
                Center(
                    child: Text(g_date.hijriToGregorian(islamic_year,islamic_month,islamic_day).toString() ,style: TextStyle(
                        color: Colors.red.shade800,
                        fontSize: 24,

                    ),)),

                SizedBox(
                  height:Get.height*0.05,
                ),


                /// G r e g o r i a n    t o   H i j r i   ///

                Container(
                  height: Get.height*0.07,
                  width: Get.width,

                  decoration: BoxDecoration(
                      color: Colors.black,
                      border: Border.symmetric(horizontal: BorderSide(color: Colors.red ,width: 2))),
                  child: Center(
                    child: Text("Gregorian  to  Hijri",style: TextStyle(
                        color: Colors.red.shade800,
                        fontWeight: FontWeight.w500,
                        fontSize: 25,
                        fontStyle: FontStyle.italic

                    ),),
                  ),
                ),

                 Container(
               height: Get.height * 0.16,
               width: Get.width,
               child: Padding(
                 padding: const EdgeInsets.all(15.0),
                 child: Row(
                   children: [
                     Expanded(
                       child: TextFormField(
                           decoration: InputDecoration(
                               focusedBorder: OutlineInputBorder(
                                 borderSide: const BorderSide(
                                     color: Colors.red,
                                     width: 2.0),
                                 borderRadius: BorderRadius.circular(8.0),
                               ),
                               hintText: "1937-2077",
                               border: OutlineInputBorder()),
                           maxLength: 4,
                           keyboardType: TextInputType.number,
                           onFieldSubmitted: (value) {
                             int.parse(value)<1937||int.parse(value)>2077?
                             Get.dialog(Column(
                               mainAxisAlignment: MainAxisAlignment.center,
                               children: [
                                 Container(
                                   color: Colors.white,
                                   height: Get.height*0.2,
                                   width:Get.width*0.7,
                                   child: Scaffold(
                                     body: Column(
                                       mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                       children: [
                                         Center(child: const Text("Invalid Input" ,style: TextStyle(
                                             color: Colors.red,
                                             fontSize: 28
                                         ),)),
                                         const Text("  The Value should be between ",style: TextStyle(
                                             color: Colors.black,
                                             fontSize: 18
                                         ),),
                                         Center(child: const Text("1939 to 2077" ,style: TextStyle(
                                             color: Colors.red,
                                             fontSize: 22
                                         ),)),
                                       ],
                                     ),
                                   ),
                                 ),
                               ],
                             )):    english_year=int.parse(value);


                             setState(() {});
                           }),
                     ),
                     SizedBox(
                       width: 10,
                     ),
                     Expanded(
                       child: TextFormField(
                           decoration: InputDecoration(
                               focusedBorder: OutlineInputBorder(
                                 borderSide: const BorderSide(
                                     color: Colors.red,
                                     width: 2.0),
                                 borderRadius: BorderRadius.circular(8.0),
                               ),
                               hintText: "Month",
                               border: OutlineInputBorder()),
                           maxLength: 2,
                           keyboardType: TextInputType.number,
                           onFieldSubmitted: (value) {
                             english_month=int.parse(value);

                             setState(() {});
                           }),
                     ),
                     SizedBox(
                       width: 10,
                     ),
                     Expanded(
                       child: TextFormField(
                           decoration: InputDecoration(
                               focusedBorder: OutlineInputBorder(
                                 borderSide: const BorderSide(
                                     color: Colors.red,
                                     width: 2.0),
                                 borderRadius: BorderRadius.circular(8.0),
                               ),
                               hintText: "Day",
                               border: OutlineInputBorder()),
                           maxLength: 2,
                           keyboardType: TextInputType.number,
                           onFieldSubmitted: (value) {
                             english_day=int.parse(value);

                             setState(() {});
                           }),
                     ),
                   ],
                 ),
               ),
                 ),
                SizedBox(
                  height:Get.height*0.07,
                ),
                 Center(
               child: Text(h_date.gregorianToHijri(english_year, english_month, english_day) ,style: TextStyle(
                 color: Colors.red.shade700,
                 fontSize: 29,
                 fontStyle: FontStyle.italic

               ),),
                 ),
                SizedBox(
                  height:Get.height*0.02,
                ),

              ],
            ),
          ),
        ),
      ),
    );
  }
}
