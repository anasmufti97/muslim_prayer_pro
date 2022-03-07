import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:muslim_prayer_pro/listen_surat_in_listen_quran.dart';
import 'package:muslim_prayer_pro/utilities_screen.dart';



class ListenQuran extends StatefulWidget {
  const ListenQuran({Key? key}) : super(key: key);

  @override
  _ListenQuranState createState() => _ListenQuranState();
}

class _ListenQuranState extends State<ListenQuran> {
  static List suratNames=[

    "Al - Fatihah",
    "Al - Fatihah1",
    "Al - Fatihah2",
    "Al - Fatihah3",
    "Al - Fatihah4",
    "Al - Fatihah5",
    "Al - Fatihah6",
    "Al - Fatihah7",
    "Al - Fatihah8",
    "Al - Fatihah9",
    "Al - Fatihah10",
    "Al-Baqarah11",
    "Al-'Imran",
    "An-Nisa",
    " Al-Ma'idah",
    " Al-An'am",
    " Al-A'raf",
    " Al-Anfal"

  ];


  static List suratAudios=[

    "Al-Fatihah  Audio",
    "Al-Fatihah1  Audio",
    "Al-Fatihah2  Audio",
    "Al-Fatihah3  Audio",
    "Al-Fatihah4   Audio",
    "Al-Fatihah5  Audio",
    "Al-Fatihah6  Audio",
    "Al-Fatihah7  Audio",
    "Al-Fatihah8  Audio",
    "Al-Fatihah9  Audio",
    "Al-Fatihah10v  Audio",
    "Al-Baqarah11  Audio",
    "Al-'Imran  Audio",
    "An-Nisa   Audio",
    " Al-Ma'idah  Audio",
    " Al-An'am  Audio",
    " Al-A'raf  Audio",
    " Al-Anfal  Audio "

  ];

  final List<SuratNamesModelClass> SuratNamesList=List.generate(suratNames.length, (index) => SuratNamesModelClass("${suratNames[index]} ","${suratAudios[index]}" ));
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Container(
          color: Colors.black,
          child: ListView.builder(
            scrollDirection: Axis.vertical,
            shrinkWrap: true,
            itemCount:SuratNamesList.length,
            itemBuilder: (context, index) {
              return InkWell(
                onTap: (){
                  Get.to(ListenSuratInListenQuranScreen(suratNamesModelClass:SuratNamesList[index] ,));
                },
                child: Padding(
                  padding: const EdgeInsets.only(right:10.0 ,left:10 ,top:10),
                  child: Container(
                    child: Padding(
                      padding: const EdgeInsets.symmetric(horizontal:15.0),
                      child: Center(
                        child: Text(SuratNamesList[index].suratNames,style: TextStyle(
                          color:Colors.white,
                          fontSize: 20
                        ),),
                      ),
                    ),
                    height: Get.height*0.11,
                    width: Get.width*0.7,
                    decoration: BoxDecoration(
                        color: Colors.red.shade900,
                      borderRadius: BorderRadius.circular(50)
                    ),
                  ),
                ),
              );
            },
          ),
        ),
      ),
    );
  }
}
