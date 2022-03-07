import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:muslim_prayer_pro/utilities_screen.dart';

class ListenSuratInListenQuranScreen extends StatelessWidget {

final SuratNamesModelClass suratNamesModelClass;


  ListenSuratInListenQuranScreen({Key? key, required this.suratNamesModelClass}) : super(key: key);



@override


  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
          body: Stack(
        children: [
          SizedBox(
            height: Get.height,
              width: Get.width,
              child: Image.network(
            "https://wallpapercave.com/wp/wp7524136.jpg",
            fit: BoxFit.fill,
          )),
         Center(
           child: Column(
             mainAxisAlignment: MainAxisAlignment.spaceEvenly,
             children: [

               Text(" PNG Picture"),
            Text(suratNamesModelClass.suratNames),
            SizedBox(
              height: 20,
            ),

            Text(suratNamesModelClass.suratAudio),
               Icon(Icons.play_arrow_outlined ,size: 60,)
           ],),
         )],
      )),
    );
  }
}
