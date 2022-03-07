import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:muslim_prayer_pro/tasbeeh_screen.dart';


class TasbeehListScreen extends StatefulWidget {
  const TasbeehListScreen({Key? key}) : super(key: key);

  @override

  _TasbeehListScreenState createState() => _TasbeehListScreenState();
}

class _TasbeehListScreenState extends State<TasbeehListScreen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(

      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.red.shade900,
          title: Text("Tesbeeh List"),
          centerTitle: true,
          actions: [
            Padding(
              padding: EdgeInsets.only(right: 8.0),
              child: Icon(Icons.settings),
            )
          ],
        ),
        body: Column(
          children: [
            Container(
              width: Get.width,
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 15.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [

                        Text(tasbeeh_name),


                        Text(discription),

                      ],),
                    ),
                    Text(counting_value.toString()),
                  ],
                ),
              ),
              color: Colors.red,
            ),
          ],
        ),
      ),
    );
  }
}

