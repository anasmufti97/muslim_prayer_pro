import 'package:flutter/material.dart';
import 'package:get/get.dart';

class NabiNamesScreen extends StatefulWidget {
  const NabiNamesScreen({Key? key}) : super(key: key);

  @override
  _NabiNamesScreenState createState() => _NabiNamesScreenState();
}

class _NabiNamesScreenState extends State<NabiNamesScreen> {





  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.red.shade900,
          title: Text("Prophet Muhammad ﷺ"),
          centerTitle: true,
        ),
        body: Container(
          child: ListView.builder(
            scrollDirection: Axis.vertical,
            shrinkWrap: true,
            itemCount:99,
            itemBuilder: (context, index) {
              return Padding(
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
                            child: Text("1",style: TextStyle(
                                color:Colors.white,
                                fontSize: 10
                            ),),
                          ),
                          Column(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [

                              Text("Allah name",style: TextStyle(
                                  color:Colors.white,
                                  fontSize: 18
                              ),),
                              Text("meaning",style: TextStyle(
                                  color:Colors.white,
                                  fontSize: 16
                              ),),


                            ],),

                        ],),
                        Text("مُحَمَّدٌُ ",style: TextStyle(
                            color:Colors.white,
                            fontSize: 22
                        ),),

                      ],
                    ),
                  ),
                  height: Get.height*0.10,
                  width: Get.width*0.7,
                  decoration: BoxDecoration(
                      color: Colors.green,
                      borderRadius: BorderRadius.circular(6)
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
