import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:get/get.dart';
import 'package:muslim_prayer_pro/listen_quran.dart';

import 'read_quran.dart';

class QuranScreen extends StatefulWidget {
  const QuranScreen({Key? key}) : super(key: key);

  @override
  _QuranScreenState createState() => _QuranScreenState();
}

class _QuranScreenState extends State<QuranScreen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(

      child: Scaffold(
        appBar: AppBar(
          title: Text("Quran"),
          centerTitle: true,
          backgroundColor: Colors.red.shade900,
        ),
       body: Stack(
         children: [
       Container(
         child: Image.asset("assets/images/quranbackground.jpg" ,fit: BoxFit.fill,),
       height: Get.height,
         width: Get.width,),
         Center(
           child: Column(

             mainAxisAlignment: MainAxisAlignment.center,
             children: [

               /// Read Quran
            InkWell(
              onTap: (){
                Get.to(ReadQuranScreen());

              },
              child: Container(
                height: Get.height*0.4,
                width: Get.width*0.96,
                color: Colors.white.withOpacity(0.6),
                child: Center(child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: const [
                    Text(" R E A D" ,style: TextStyle(
                      fontSize: 45, fontWeight: FontWeight.bold
                    ),),
                    Text(" قرآن کریم پڑھیں" ,style: TextStyle(
                      fontSize: 28
                    ),),
                  ],
                )),
              ),
            ),
               SizedBox(
                 height:Get.height*0.02,
               ),
               /// listen Quran
               InkWell(
                 onTap: (){

                   Get.to(ListenQuran());
                 },

                 child: Container(
                   height: Get.height*0.4,
                   width: Get.width*0.96,
                   color: Colors.white.withOpacity(0.6),
                   child: Center(child: Column(
                     mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                     children: const [
                       Text(" L I S T E N" ,style: TextStyle(
                           fontSize: 45, fontWeight: FontWeight.bold
                       ),),
                       Text("قرآن کریم سنیں۔" ,style: TextStyle(
                           fontSize: 28
                       ),),
                     ],
                   )),
                 ),
               )
             ],
           ),
         ),

         ],
       ),
        ),
      );
  }
}
