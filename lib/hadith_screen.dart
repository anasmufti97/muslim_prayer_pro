import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:muslim_prayer_pro/utilities_screen.dart';

class HadithScreen extends StatefulWidget {
  const HadithScreen({Key? key}) : super(key: key);

  @override
  _HadithScreenState createState() => _HadithScreenState();
}

class _HadithScreenState extends State<HadithScreen> {

  MyUtilities namesList = MyUtilities();
  int suratindex=0;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.red.shade900,
          title: Text("Hadith"),
          centerTitle: true,
        ),
        body: Column(
          children: [



           Expanded(

             flex:6,
             child:  Container(
             width: Get.width,
             color: Colors.lightGreenAccent,
             child: SingleChildScrollView(
               child: Padding(
                 padding: const EdgeInsets.all(8.0),
                 child: Column(
                   children: [
                     Text(namesList.suratNames[suratindex]),
                     Text(
                       "t goes without saying that Prophet Muhammad (peace be upon him) has left us with two powerful sources for the improvement of the individual, the society and for the nations, those are: the Holy Quran and ahadith. The Quran was revealed to the Last Messenger (peace be upon him) through the angel Gabriel. The ahadith show us the diversities a single person can have, and the ways these diversities may be used to produce an optimal performance, where the performance is exemplary for future generations. This was one of the main tasks of the Last Messenger (peace be upon him), to guide humanity on the right path."
                     ),
                     Text(
                       "t goes without saying that Prophet Muhammad (peace be upon him) has left us with two powerful sources for the improvement of the individual, the society and for the nations, those are: the Holy Quran and ahadith. The Quran was revealed to the Last Messenger (peace be upon him) through the angel Gabriel. The ahadith show us the diversities a single person can have, and the ways these diversities may be used to produce an optimal performance, where the performance is exemplary for future generations. This was one of the main tasks of the Last Messenger (peace be upon him), to guide humanity on the right path."
                     ),
                   ],
                 ),
               ),
             ),

           ),),

           Expanded(
             child:  Row(
               mainAxisAlignment: MainAxisAlignment.spaceEvenly,
               children: [
                 InkWell(
                     onTap: (){

                       if(suratindex==0){
                         namesList.suratNames[0];

                       }
                       else{
                         suratindex--;
                       }

                       setState(() {

                       });},
                     child:const Icon(Icons.arrow_back_ios_outlined ,size: 40,)
                 ),
                 CircleAvatar(
                   backgroundColor: Colors.red,
                   radius: 25,
                   child: Center(child: Text((suratindex+1).toString() ,style: TextStyle(
                       fontSize: 22,
                       color: Colors.lightGreenAccent
                   ),)),
                 ),
                 InkWell(
                     onTap: (){
                       if(suratindex==namesList.suratNames.length-1){
                         namesList.suratNames[suratindex];

                       }
                       else{
                         suratindex++;
                       }



                       setState(() {
                       });
                     },
                     child:const Icon(Icons.arrow_forward_ios ,size: 40,)
                 ),
               ],
             ),
           )

          ],
        ),
      ),
    );
  }
}
