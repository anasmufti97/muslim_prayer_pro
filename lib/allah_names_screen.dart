import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:muslim_prayer_pro/utilities_screen.dart';

import 'single_allah_name_screen.dart';

class AllahNamesScreen extends StatefulWidget {
  const AllahNamesScreen({Key? key}) : super(key: key);

  @override
  _AllahNamesScreenState createState() => _AllahNamesScreenState();
}

class _AllahNamesScreenState extends State<AllahNamesScreen> {

  static List<String> allahNamesList= [
    "الرَّحْمَنُ","الرَّحِيمُ","الْمَلِكُ","لْقُدُّوسُ"
  ];
  static List<String> allahNamesInEnglishList= [
    "Ar Rehman","Ar Reheem","Al Malik","Al Qudoos"
  ];
  static List<String> allahNamesMeaningList= [

    "The Beneficent","The Merciful","The Eternal Lord","The Most Sacred"
  ];
  List<int> allahNamesCountingLIst= [
    1,2,3,4

  ];

  final List<AllahNamesModelClass> AllahNamesScreenList=List.generate(allahNamesList.length, (index) => AllahNamesModelClass(allahNamesList[index], allahNamesInEnglishList[index], allahNamesMeaningList[index])) ;
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.red.shade900,
          title: Text("Allah Almighty"),
          centerTitle: true,
        ),
        body: Container(
   child: ListView.builder(
     scrollDirection: Axis.vertical,
     shrinkWrap: true,
     itemCount:allahNamesList.length,
     itemBuilder: (context, index) {
       return InkWell(
         onTap: (){

           Get.to(SingleAllahNameScreen(allahNamesModelClass: AllahNamesScreenList[index],));
         },

         child: Padding(
           padding: const EdgeInsets.only(right:10.0 ,left:10 ,top:3),
           child: Container(
             child: Padding(
               padding: const EdgeInsets.symmetric(horizontal:15.0),
               child: Row(
                 mainAxisAlignment: MainAxisAlignment.spaceBetween,
                 children: [
                   Row(children: [
                     Padding(
                       padding: const EdgeInsets.only(right:10.0),
                       child: Text((1).toString(),style: TextStyle(
                           color:Colors.black,
                           fontSize: 10
                       ),),
                     ),
                     Column(
                       mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                       children: [

                       Text(AllahNamesScreenList[index].allahNameInEnglish,style: TextStyle(
                           color:Colors.green.shade700,
                           fontSize: 17
                       ),),
                       Text(AllahNamesScreenList[index].allahNameMeaning,style: TextStyle(
                           color:Colors.white,
                           fontSize: 13
                       ),),


                     ],),

                   ],),
                   Text(AllahNamesScreenList[index].allahName,style: TextStyle(
                       color:Colors.black,
                       fontSize: 22
                   ),),

                 ],
               ),
             ),
             height: Get.height*0.10,
             width: Get.width*0.7,
             decoration: BoxDecoration(
                 color: Colors.red,
                 borderRadius: BorderRadius.circular(6)
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
