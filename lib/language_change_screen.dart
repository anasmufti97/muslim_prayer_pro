import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:muslim_prayer_pro/utilities_screen.dart';

import 'read_surat_screen.dart';

class LanguageChangeScreen extends StatefulWidget {
  const LanguageChangeScreen({Key? key}) : super(key: key);

  @override
  _LanguageChangeScreenState createState() => _LanguageChangeScreenState();
}

class _LanguageChangeScreenState extends State<LanguageChangeScreen> {

  @override
  Widget build(BuildContext context) {
    return SafeArea(

      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.red.shade900,
          centerTitle: true,
          title: Text("Select Language"),
        ),
        body: Container(
           child: Column(
            children: [
Padding(
  padding: const EdgeInsets.symmetric(horizontal:12.0 ,vertical: 5),
  child:   Row(

    mainAxisAlignment: MainAxisAlignment.spaceBetween,

    children: [





    Text(" Turkish " ,style: TextStyle(

      color: Colors.black,

      fontSize: 16

    ),),

    InkWell(

      onTap: (){

        if(MyUtilities.languageValue==false){

          MyUtilities.languageValue=true;

          setState(() {



          });



        }

        else{



          MyUtilities.languageValue=false;

          setState(() {



          });

        }

      },

      child:CircleAvatar(

        radius: 15,
        backgroundColor: Colors.black,
        child: MyUtilities.languageValue?Icon(Icons.check ,color: Colors.white,):
        Icon(Icons.check ,color: Colors.transparent,)

      )

    )

   ],

  ),
),

      ],
           ),
          color: Colors.lightGreenAccent,
        ),
      ),
    );
  }
}
