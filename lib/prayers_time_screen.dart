import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:intl/intl.dart';

import 'prayer_time_setting.dart';




class PrayerTimeSreen extends StatefulWidget {
  const PrayerTimeSreen({Key? key}) : super(key: key);

  @override
  _PrayerTimeSreenState createState() => _PrayerTimeSreenState();
}

class _PrayerTimeSreenState extends State<PrayerTimeSreen> {



 /* getCurrentLocation() async{
    Position position = await Geolocator.getCurrentPosition(
      desiredAccuracy: LocationAccuracy.low
    );
    getAddressFromCordinates(Coordinates(position.latitude, position.longitude)
    );

  }
  getAddressFromCordinates(Coordinates cords) async{
    var addresses = await Geocoder.local.findAddressesFromCoordinates(cords);
    var first = addresses.first;
    Text("${first.addressLine}");
      }*/


  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: Text("Prayer Time"),
          centerTitle: true,
          backgroundColor: Colors.red.shade800,
          actions:[
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 10.0),
              child: InkWell(
                onTap: (){
                  Get.to(PrayerTimeSettingScreen());
                  },
                child: Icon(
                  Icons.settings,
                  size: 25,
                ),
              ),
            ),
          ],
        ),
        body: Stack(
          children: [
            Container(
              height:Get.height,
              width:Get.width,
              child: Image.asset("assets/images/backgroundImage.jpg" ,fit: BoxFit.fill,)

            ),

            Padding(
              padding: const EdgeInsets.only(top: 20.0),
              child: CarouselSlider(
                options: CarouselOptions(
                  onPageChanged: ( context ,index ){
                    var slider_value=index ;

                  },
                  enableInfiniteScroll: false,
                  enlargeCenterPage: true,
                  height:Get.height*0.5 ,
                ),
                items: [
                1,2,3,4,5,6,

                ].map((u) {
                  return Builder(
                    builder: (BuildContext context) {
                      return Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          namazTimeContainer("فجر" ),
                          namazTimeContainer("ظہر"),
                          namazTimeContainer("عصر"),
                          namazTimeContainer("مغرب"),
                          namazTimeContainer("عشاء"),
                        ],);
                    },
                  );
                }).toList(),
              ),
            ),



            Center(
              child: Column(
                mainAxisAlignment:MainAxisAlignment.end,
                children: [
                  SizedBox(
                    height: Get.height*0.06,
                  ),



                  Text("remaining time" ,style: TextStyle(
                      color: Colors.white70,
                      fontSize: 23
                  ),),

                  SizedBox(
                    height: Get.height*0.02,
                  ),
                  Text("Location" ,style: const TextStyle(
                      color: Colors.white70,
                      fontSize: 23
                  ),),
                  Text(
                  DateFormat('KK:mm a').format(DateTime.now()),
                  style: TextStyle(
                      fontSize: 28,
                      color: Colors.red.withOpacity(0.8),
                      fontWeight: FontWeight.bold),
                ),
                  Text(
                      DateFormat('MMMM  dd,yyyy   EEEE')
                          .format(DateTime.now()),
                      style: TextStyle(
                          fontSize: 18,
                          color: Colors.green.withOpacity(0.8),
                          fontWeight: FontWeight.bold)),
                  const Text("Islamic Date" ,style: TextStyle(
                    color: Colors.white70,
                    fontSize: 20
                  ),),

SizedBox(
  height: Get.height*0.06,
)



              ],),
            ),

          ],
        ),
      ),
    );
  }
}

Widget namazTimeContainer(String namazName){
  return Padding(
    padding: const EdgeInsets.all(.0),
    child: Container(
      height:Get.height*0.5,
      width:Get.width*0.15,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          const SizedBox(height: 10),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal:0.0),
            child: Text(
              namazName ,
              textAlign: TextAlign.center,
              maxLines:1,
              style: const TextStyle(
              color: Colors.white70,
              fontWeight: FontWeight.bold,
              fontSize: 23
            ),),
          ),
          SizedBox(height: 10,),
          Text(
            DateFormat('KK').format(DateTime.now()),
            style: TextStyle(
                fontSize: 28,
                color: Colors.black.withOpacity(0.8),
                fontWeight: FontWeight.bold),
          ),
          Text(
            DateFormat('mm').format(DateTime.now()),
            style: TextStyle(
                fontSize: 28,
                color: Colors.black.withOpacity(0.8),
                fontWeight: FontWeight.bold),
          ),
          Text(
            DateFormat('a').format(DateTime.now()),
            style: TextStyle(
                fontSize: 17,
                color: Colors.black.withOpacity(0.8),
                fontWeight: FontWeight.bold),
          ),
          Expanded(child:Container()),
          Icon(Icons.alarm ,color: Colors.white70,size: 28,),
          const SizedBox(height: 10,),

        ],),
      decoration: BoxDecoration(
          color: Colors.red.shade900.withOpacity(0.7),
          borderRadius: BorderRadius.circular(15)
      ),

    ),
  );


}
