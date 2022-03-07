import 'package:adhan/adhan.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:intl/intl.dart';
import 'package:location/location.dart';

class PrayerTimeDuplicateScreen extends StatefulWidget {
  const PrayerTimeDuplicateScreen({Key? key}) : super(key: key);

  @override
  _PrayerTimeDuplicateScreenState createState() =>
      _PrayerTimeDuplicateScreenState();
}

List months = [
  "Jan",
  "Feb",
  "March",
  "April",
  "May",
  "June",
  "July",
  "August",
  "September",
  "October",
  "November",
  "December"
];

class _PrayerTimeDuplicateScreenState extends State<PrayerTimeDuplicateScreen> {
  Location location = Location();
  late PrayerTimes prayerTimes;
  late DateTime date;
  late Coordinates coordinates;
  late CalculationParameters params;
  late Stream<LocationData> locationData;

  @override
  void initState() {
    locationData = location.onLocationChanged;
    date = DateTime.now();
    params = CalculationMethod.muslim_world_league.getParameters();
    super.initState();
  }

  remainsTime() async* {
    yield* Stream.periodic(Duration(seconds: 1), (t) {
      var prayer = prayerTimes.nextPrayer();
      DateTime nextPrayerTime = prayerTimes.timeForPrayer(prayer).toLocal();
      DateTime now = DateTime.now();
      Duration remains = nextPrayerTime.difference(now);
      return secondToHour(remains.inSeconds);
    });
  }



  secondToHour(int seconds ){
    int minutes = seconds~/60;
    int hours = minutes~/60;
    seconds = seconds - minutes*60 ;
    minutes = minutes - hours*60 ;
    return "$hours:$minutes:$seconds";



  }

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(builder: (context, constraints) {
      final height = constraints.maxHeight;
      final width = constraints.maxWidth;
      return SafeArea(
        child: StreamBuilder<LocationData>(
          stream: locationData,
          builder: (context, snapshot) {
            if(snapshot.hasData){
              snapshot.data;
              coordinates=Coordinates(snapshot.data!.latitude, snapshot.data!.longitude);
              prayerTimes = PrayerTimes.today(coordinates, params);

              return Scaffold(
                  appBar: AppBar(
                    actions: [
                      InkWell(
                        onTap: (){
                          setState(() {

                          });
                        },

                        child: Padding(
                          padding: EdgeInsets.only(right:7.0),
                          child: Icon(Icons.refresh ,size: 35,),
                        ),
                      )
                    ],
                    backgroundColor: Colors.red.shade900,
                    title: Text(
                      DateFormat('KK:mm a').format(DateTime.now()),
                      style: TextStyle(
                          fontSize: 28,
                          color: Colors.lightGreenAccent.withOpacity(0.8),
                          fontWeight: FontWeight.bold),
                    ),
                    centerTitle: true,
                  ),
                  body: Container(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            // InkWell(
                            //   onTap: () {
                            //     date = date.add(Duration(days: -1));
                            //     setState(() {});
                            //   },
                            //   child: Icon(
                            //     Icons.arrow_back_ios,
                            //     size: 40,
                            //   ),
                            // ),
                            Text(
                              "${date.day}    ${months[date.month - 1]}  ${date.year}",
                              style: TextStyle(
                                  color: Colors.red.shade900,
                                  fontSize: 22,
                                  fontWeight: FontWeight.bold),
                            ),
                            // InkWell(
                            //   onTap: () {
                            //     date = date.add(Duration(days: 1));
                            //     setState(() {});
                            //   },
                            //   child: Icon(
                            //     Icons.arrow_forward_ios,
                            //     size: 40,
                            //   ),
                            // )
                          ],
                        ),
                        Text(
                          prayerTimes.nextPrayer().toString().toUpperCase(),
                          style: TextStyle(
                              color: Colors.lightGreenAccent.shade700,
                              fontSize: 20,
                              fontWeight: FontWeight.bold),
                        ),
                        StreamBuilder(
                            stream: remainsTime(),
                            builder: (context, snapshot) {
                              return Text(
                                "${snapshot.data}",
                                style: TextStyle(
                                    color: Colors.red,
                                    fontSize: 20,
                                    fontWeight: FontWeight.bold),
                              );
                            }),
                        Text(
                          "${coordinates.longitude} ,${coordinates.latitude}",
                          style: TextStyle(
                              color: Colors.black,
                              fontSize: 20,
                              fontWeight: FontWeight.bold),
                        ),
                        Container(
                          height: Get.height * 0.5,
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              Align(
                                alignment: Alignment.centerLeft,
                                child: Container(
                                  decoration: BoxDecoration(
                                      color: Colors.lightGreenAccent.withOpacity(0.8),
                                      borderRadius: BorderRadius.only(
                                          topRight: Radius.circular(20),
                                          bottomRight: Radius.circular(20))),
                                  height: Get.height * 0.09,
                                  width: Get.width * 0.8,
                                  child: Padding(
                                    padding:
                                    const EdgeInsets.symmetric(horizontal: 12.0),
                                    child: Row(
                                      mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                      children: [
                                        Text(
                                          "FAJR",
                                          style: TextStyle(
                                              color: Colors.red,
                                              fontSize: 20,
                                              fontWeight: FontWeight.bold),
                                        ),
                                        Text(
                                          "${DateFormat.jm().format(prayerTimes.fajr)}",
                                          style: TextStyle(
                                              color: Colors.green.shade600,
                                              fontSize: 18,
                                              fontWeight: FontWeight.bold),
                                        ),
                                        Icon(
                                          Icons.alarm,
                                          size: 32,
                                        )
                                      ],
                                    ),
                                  ),
                                ),
                              ),
                              Align(
                                alignment: Alignment.centerRight,
                                child: Container(
                                  decoration: BoxDecoration(
                                      color: Colors.lightGreenAccent.withOpacity(0.8),
                                      borderRadius: BorderRadius.only(
                                          topLeft: Radius.circular(20),
                                          bottomLeft: Radius.circular(20))),
                                  height: Get.height * 0.09,
                                  width: Get.width * 0.8,
                                  child: Padding(
                                    padding:
                                    const EdgeInsets.symmetric(horizontal: 12.0),
                                    child: Row(
                                      mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                      children: [
                                        Icon(
                                          Icons.alarm,
                                          size: 32,
                                        ),
                                        Text(
                                          "${DateFormat.jm().format(prayerTimes.dhuhr)}",
                                          style: TextStyle(
                                              color: Colors.green.shade600,
                                              fontSize: 18,
                                              fontWeight: FontWeight.bold),
                                        ),
                                        Text(
                                          "DOHUR",
                                          style: TextStyle(
                                              color: Colors.red,
                                              fontSize: 20,
                                              fontWeight: FontWeight.bold),
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                              ),
                              Align(
                                alignment: Alignment.centerLeft,
                                child: Container(
                                  decoration: BoxDecoration(
                                      color: Colors.lightGreenAccent.withOpacity(0.8),
                                      borderRadius: BorderRadius.only(
                                          topRight: Radius.circular(20),
                                          bottomRight: Radius.circular(20))),
                                  height: Get.height * 0.09,
                                  width: Get.width * 0.8,
                                  child: Padding(
                                    padding:
                                    const EdgeInsets.symmetric(horizontal: 12.0),
                                    child: Row(
                                      mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                      children: [
                                        Text(
                                          "ASAR",
                                          style: TextStyle(
                                              color: Colors.red,
                                              fontSize: 20,
                                              fontWeight: FontWeight.bold),
                                        ),
                                        Text(
                                          "${DateFormat.jm().format(prayerTimes.asr)}",
                                          style: TextStyle(
                                              color: Colors.green.shade600,
                                              fontSize: 18,
                                              fontWeight: FontWeight.bold),
                                        ),
                                        Icon(
                                          Icons.alarm,
                                          size: 32,
                                        )
                                      ],
                                    ),
                                  ),
                                ),
                              ),
                              Align(
                                alignment: Alignment.centerRight,
                                child: Container(
                                  decoration: BoxDecoration(
                                      color: Colors.lightGreenAccent.withOpacity(0.8),
                                      borderRadius: BorderRadius.only(
                                          topLeft: Radius.circular(20),
                                          bottomLeft: Radius.circular(20))),
                                  height: Get.height * 0.09,
                                  width: Get.width * 0.8,
                                  child: Padding(
                                    padding:
                                    const EdgeInsets.symmetric(horizontal: 12.0),
                                    child: Row(
                                      mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                      children: [
                                        Icon(
                                          Icons.alarm,
                                          size: 32,
                                        ),
                                        Text(
                                          "${DateFormat.jm().format(prayerTimes.maghrib)}",
                                          style: TextStyle(
                                              color: Colors.green.shade600,
                                              fontSize: 18,
                                              fontWeight: FontWeight.bold),
                                        ),
                                        Text(
                                          "MAGHRIB",
                                          style: TextStyle(
                                              color: Colors.red,
                                              fontSize: 20,
                                              fontWeight: FontWeight.bold),
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                              ),
                              Align(
                                alignment: Alignment.centerLeft,
                                child: Container(
                                  decoration: BoxDecoration(
                                      color: Colors.lightGreenAccent.withOpacity(0.8),
                                      borderRadius: BorderRadius.only(
                                          topRight: Radius.circular(20),
                                          bottomRight: Radius.circular(20))),
                                  height: Get.height * 0.09,
                                  width: Get.width * 0.8,
                                  child: Padding(
                                    padding:
                                    const EdgeInsets.symmetric(horizontal: 12.0),
                                    child: Row(
                                      mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                      children: [
                                        Text(
                                          "ISHA",
                                          style: TextStyle(
                                              color: Colors.red,
                                              fontSize: 20,
                                              fontWeight: FontWeight.bold),
                                        ),
                                        Text(
                                          "${DateFormat.jm().format(prayerTimes.isha)}",
                                          style: TextStyle(
                                              color: Colors.green.shade600,
                                              fontSize: 18,
                                              fontWeight: FontWeight.bold),
                                        ),
                                        Icon(
                                          Icons.alarm,
                                          size: 32,
                                        )
                                      ],
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        )
                      ],
                    ),
                  ));
            }
            else{
              return CircularProgressIndicator(

                color: Colors.red,

              );
            }
          }
        ),
      );
    });
  }
}
