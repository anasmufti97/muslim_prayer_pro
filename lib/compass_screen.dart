import 'dart:math';
import 'package:adhan/adhan.dart';
import 'package:flutter/material.dart';
import 'package:flutter_compass/flutter_compass.dart';
import 'package:location/location.dart';

class CompassScreen extends StatefulWidget {
  const CompassScreen({Key? key}) : super(key: key);

  @override
  _CompassScreenState createState() => _CompassScreenState();
}

class _CompassScreenState extends State<CompassScreen> {
  Location location = Location();
  late Stream<LocationData> locationData;

  @override
  void initState() {
    locationData = location.onLocationChanged;
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        final height = constraints.maxHeight;
        final width = constraints.maxWidth;


        return StreamBuilder<LocationData>(
            stream: locationData,
            builder: (context, snapshot) {
              if (snapshot.hasData) {
                snapshot.data;
                Coordinates coordinates = Coordinates(
                    snapshot.data!.latitude, snapshot.data!.longitude);
                var degree = Qibla.MAKKAH;
                var qibla = degree;
                return SafeArea(
                    child: Scaffold(
                      body: Container(

                          child: StreamBuilder<CompassEvent>(
                              stream: FlutterCompass.events,
                              builder: (context, snapshot2) {
                                double compass = snapshot2.data!.heading! *
                                    (pi / 180);

                                if (snapshot2.hasData) {
                                  return Transform.rotate(
                                    angle: compass,
                                    child: Center(child: Icon(
                                      Icons.arrow_back, size: 90,)),
                                  );
                                }
                                else
                                  {
                                    return CircularProgressIndicator();
                                  }
                              })),
                    )
                   );
                  }

              else {
                return CircularProgressIndicator();
              }
            }
        );
      },
    );
  }
}

