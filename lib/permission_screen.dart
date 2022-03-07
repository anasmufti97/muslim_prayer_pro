import 'package:flutter/material.dart';
import 'package:location/location.dart';
import 'package:muslim_prayer_pro/compass_screen.dart';

class PermissionScreen extends StatefulWidget {
  const PermissionScreen({Key? key}) : super(key: key);

  @override
  _PermissionScreenState createState() => _PermissionScreenState();
}

class _PermissionScreenState extends State<PermissionScreen> {
  Location location =Location();
  @override
  void initState() {
    super.initState();
  }

  Future<PermissionStatus>checkPermission() async {
    return await location.hasPermission();

  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: FutureBuilder<PermissionStatus>(

          future: checkPermission(),
          builder: (BuildContext context , snapshot ) {
      if(snapshot.hasData){
        if(snapshot.data==PermissionStatus.granted){
          return CompassScreen();
        }
        else{

          return Center(
            child: ElevatedButton(
              onPressed: () async{
                await location.requestPermission();
                setState(() {});
              },
              child: Text("Need Permission to Access Your Location")) ,
          );
        }
      }

      else{
        return CircularProgressIndicator(
          color: Colors.red,
        );
      }
          }),
      ),
    );
  }
}
