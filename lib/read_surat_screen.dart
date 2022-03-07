import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:muslim_prayer_pro/language_change_screen.dart';
import 'package:muslim_prayer_pro/utilities_screen.dart';


int suratnameindex=0;
class ReadSuratScreen extends StatefulWidget {
  const ReadSuratScreen({Key? key}) : super(key: key);

  @override
  _ReadSuratScreenState createState() => _ReadSuratScreenState();
}

class _ReadSuratScreenState extends State<ReadSuratScreen> {



  bool turkishlanguage = false;
  bool value = false;
  MyUtilities my= MyUtilities();

  @override
  void initState() {
    setState(() {
    });
    super.initState();
  }


  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(

          backgroundColor: Colors.red.shade900,
          title: Text(""),
        ),
        body: Container(

          color: Colors.black,

          child: ListView.builder(
            scrollDirection: Axis.vertical,
            shrinkWrap: true,
            itemCount: 114,
            itemBuilder: (context, index) {
              bool  value;
              return Padding(
                padding: const EdgeInsets.only(bottom:0.5),
                child: Container(
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal:15.0),
                    child: Column(

                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        SizedBox(
                          height: 15,
                        ),
                        Text(" وا فيهن انفسكم وقاتلوا المشركين كافة كمااتلونكم كافة واعلموا ان الله مع المتقي"

                          ,textDirection: TextDirection.rtl,
                          style: TextStyle(
                            fontSize: 18,
                              fontWeight: FontWeight.bold
                          ),),
                        Text("Ayat in english" ,style: TextStyle(
                            color: Colors.red.shade900
                        ),),
                        SizedBox(
                          height: 15,
                        ),

                        Text("English", style: TextStyle(
                         fontWeight: FontWeight.bold
                        ),),
                        Text("      uhammad Muhsin Khan and the Moroccan Salafi scholar Muhammad Taqi-ud-Din al-Hilali. ause it is the officially promoted translation of the Saudi Government."),
                        SizedBox(
                          height: 15,
                        ),
                        Text(" Urdu" ,style: TextStyle(
                            fontWeight: FontWeight.bold
                        ),),
                        Text(" انفسكم وقاتلوا المشركين كافة كما يقاتلونكم كافة واعلموا ان الله مع المت" ,textDirection: TextDirection.rtl,),
                        SizedBox(
                          height:5,
                        ),
                        MyUtilities.languageValue?
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [

                            Text(" Turkish" ,style: TextStyle(
                                fontWeight: FontWeight.bold
                            ),),
                            SizedBox(
                              height: 10,
                            ),
                            Text(" انفسكم وقاتلوا المشركين كافة كما يقاتلونكم كافة واعلموا ان الله مع المت" ,textDirection: TextDirection.rtl,)
                          ],
                        )
                        : Text("")
                        ,
 ],
                    )
                  ),
                  width: Get.width*0.9,
                  decoration: BoxDecoration(
                      color: Colors.white,
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
