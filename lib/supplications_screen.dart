import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:muslim_prayer_pro/utilities_screen.dart';

class SupplicationsScreen extends StatefulWidget {
  const SupplicationsScreen({Key? key}) : super(key: key);

  @override
  _SupplicationsScreenState createState() => _SupplicationsScreenState();
}

class _SupplicationsScreenState extends State<SupplicationsScreen> {

  MyUtilities supplications = MyUtilities();
  int supplicationsIndex = 0;
  int supplicationpurposeIndex=0;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
          appBar: AppBar(
            backgroundColor: Colors.red.shade900,
            title: Text("Supplications"),
            centerTitle: true,
          ),
          body: Column(
              children: [

          Padding(
          padding: const EdgeInsets.all(8.0),
          child: Container(
            height: Get.height * 0.07,
            width: Get.width,
            color: Colors.green,
            child: Center(child: Text(supplications.supplicationpurpose[supplicationpurposeIndex].toString())),
          ),
        ),

        Expanded(

          flex: 7,
          child: Container(
            width: Get.width,
            color: Colors.lightGreenAccent.withOpacity(0.7),
            child: SingleChildScrollView(
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Column(
                    children: [

                      Text(supplications.supplications[supplicationsIndex],
                        textDirection: TextDirection.rtl, style: TextStyle(
                          color: Colors.red,
                          fontSize: 18

                        ),),

                    ]
                ),
              ),
            ),

          ),),

        Expanded(
            child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                InkWell(
                onTap:(){

        if(supplicationsIndex==0){
        supplications.supplications[0];

        }
        else{
        supplicationsIndex--;
        supplicationpurposeIndex--;
        }

        setState(() {

        });


        } ,
            child: const Icon(Icons.arrow_back_ios_outlined, size: 40,)),
        CircleAvatar(
          backgroundColor: Colors.red,
          radius: 22,
          child: Center(
              child: Text((supplicationsIndex + 1).toString(), style: TextStyle(
                  fontSize: 22,
                  color: Colors.lightGreenAccent
              ),)),
        ),
        InkWell(
        onTap:() {
            if (supplicationsIndex == supplications.supplications.length - 1) {
              supplications.supplications[supplicationsIndex];
            }
            else {
              supplicationsIndex++;
              supplicationpurposeIndex++;
            }


            setState(() {});
        },
        child:
        const Icon(Icons.arrow_forward_ios, size: 40))
        ],
        ),
        )

        ],
        ),
        )
        ,
        );
      }
    }
