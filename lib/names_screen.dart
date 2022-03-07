import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:muslim_prayer_pro/allah_names_screen.dart';
import 'package:muslim_prayer_pro/nabi_names_screen.dart';

class NamesScreen extends StatefulWidget {
  const NamesScreen({Key? key}) : super(key: key);

  @override
  _NamesScreenState createState() => _NamesScreenState();
}

class _NamesScreenState extends State<NamesScreen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
          appBar: AppBar(
            title: Text("Names"),
            centerTitle: true,
            backgroundColor: Colors.red.shade900,
          ),
            body: Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  InkWell(
                      onTap: (){

                        Get.to(AllahNamesScreen());
                      },
                      child: namesCircleContainer("اسماء الله")),

                  InkWell(
                      onTap:(){

                        Get.to(NabiNamesScreen());
                      } ,
                      child: namesCircleContainer("أسماء النبي")),

                ],
              ),
            )));
  }
}


Widget namesCircleContainer(String asmaText){
  return  CircleAvatar(
    child: Text(asmaText,style: TextStyle(

        fontSize:32,
      color: Colors.red.shade900
    ),),
    radius:100,
    backgroundColor: Colors.green,

  );



}