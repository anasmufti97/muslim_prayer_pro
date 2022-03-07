import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:muslim_prayer_pro/utilities_screen.dart';

class SingleAllahNameScreen extends StatelessWidget {

  final AllahNamesModelClass allahNamesModelClass;


  const SingleAllahNameScreen({Key? key, required this.allahNamesModelClass})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(

        appBar: AppBar(
          backgroundColor: Colors.red.shade900,
          title: Text(allahNamesModelClass.allahNameInEnglish),
          centerTitle: true,
        ),
        body: Container(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Center(child: CircleAvatar(
                  radius: 70,
                  backgroundColor: Colors.red,
                  child: Text(allahNamesModelClass.allahName, style: TextStyle(
                      fontSize: 30,
                      color: Colors.black,
                      fontWeight: FontWeight.w500
                  ),))),
              Container(
                child: Center(
                    child: Text(allahNamesModelClass.allahNameMeaning)),
                height: Get.height * 0.07,
                width: Get.width * 0.8,
                color: Colors.green,
              ),
              Container(
                child: Center(child: Padding(
                  padding: const EdgeInsets.all(12.0),
                  child: Text(
                      "or example, if 4 of your friends are hired by Turing's U.S. partner compavfdvny for at least 1 month, t s hen you will earn lkdnl adlncldnc*"),
                )),
                width: Get.width * 0.8,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(15),
                    border: Border.all(color: Colors.green, width: 3)
                ),
              ),
              Icon(Icons.play_arrow_outlined, size: 50,)


            ],
          ),
        ),
      ),
    );
  }
}
