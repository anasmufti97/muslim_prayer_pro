import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:muslim_prayer_pro/listen_surat_in_listen_quran.dart';

import 'read_surat_screen.dart';
import 'utilities_screen.dart';

class ReadQuranScreen extends StatefulWidget {

  const ReadQuranScreen({Key? key}) : super(key: key);

  @override
  _ReadQuranScreenState createState() => _ReadQuranScreenState();
}

class _ReadQuranScreenState extends State<ReadQuranScreen> {

  var suratnumbers = [

    1,2,3,4,5,6,7,8,9,10,

    1,2,3,4,5,6,7,8,9,10

  ];

  MyUtilities suratnamesinEnglish = MyUtilities() ;
  var suratEnglishNames =[];
  var suratMeaning =[];
  var suratArabicNames =[];

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.red.shade900,
          title: Text("Read Quran"),
          centerTitle: true,
        ),
        body:ListView.builder(
            scrollDirection: Axis.vertical,
            shrinkWrap: true,
            itemCount: 15,
            itemBuilder: (context, index) {
              return InkWell(
                onTap: (){
                Get.to(ReadSuratScreen());
                },

                child: Container(
                  child: Card(
                        child: ListTile(
                          leading: Text(suratnumbers[index].toString()),
                          //same over here
                          title: Text(suratnamesinEnglish.suratNames[index]),
                          subtitle: Text(suratnamesinEnglish.names),
                          trailing: Text("Arabic name")
                        )),
                ),
              );
            },
          ),

        ),
    );
  }
}

