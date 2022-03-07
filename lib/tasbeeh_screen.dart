import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'tasbeeh_list.dart';

String tasbeeh_name = "";
int _counter = 0;
int counting_value = 0;

String discription = "";
class TasbeehCounterScreen extends StatefulWidget {
  const TasbeehCounterScreen({Key? key}) : super(key: key);

  @override
  _TasbeehCounterScreenState createState() => _TasbeehCounterScreenState();
}

class _TasbeehCounterScreenState extends State<TasbeehCounterScreen> {
  Future<SharedPreferences> sprefs = SharedPreferences.getInstance();

  @override
  void initState() {
    super.initState();
    getData();
  }

  Future<Null> getData() async {
    final SharedPreferences _prefs = await sprefs;
    int data = _prefs.getString("count") != null
        ? int.parse(_prefs.getString("count")!)
        : _counter;

    this.setState(() {
      _counter = data;
    });
  }

  Future<Null> increament() async {
    final SharedPreferences _prefs = await sprefs;
    this.setState(() {
      _counter = _counter + 1;
      _prefs.setString("count", _counter.toString());
    });
  }

  Future<Null> decrement() async {
    final SharedPreferences _prefs = await sprefs;
    this.setState(() {
      _counter = _counter - 1;
      _prefs.setString("count", _counter.toString());
    });
  }

  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: Text("Tasbeeh Counter"),
          backgroundColor: Colors.red.shade900,
          centerTitle: true,
          actions: [
            Padding(
              padding: EdgeInsets.only(right: 8.0),
              child: InkWell(
                  onTap: () {
                    Get.to(TasbeehListScreen());
                  },
                  child: Icon(Icons.list, size: 29)),
            )
          ],
        ),
        resizeToAvoidBottomInset: false,
        body: Stack(
          children: [
            Container(
              height: Get.height,
              width: Get.width,
              color: Colors.grey,
              child: Image.asset("assets/images/counter background.jpg" ,fit: BoxFit.fill,)
            ),
            Row(
              children: [
                Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    SizedBox(height:Get.height*0.03),
                    InkWell(
                      onTap: () {
                        _counter = 0;
                        setState(() {});
                      },
                      child: CircleAvatar(
                        child: Icon(Icons.refresh_sharp),
                        radius: 23,
                        backgroundColor: Colors.green,
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(15.0),
                      child: InkWell(
                        onTap: () {
                          Get.dialog(

                            Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Container(

                                  height: Get.height * 0.7,
                                  width: Get.width * 0.8,
                                  color: Colors.green,
                                  child: Scaffold(
                                    resizeToAvoidBottomInset: false,
                                    body: Column(
                                      children: [
                                        Container(
                                          color: Colors.red,
                                          height: 40,
                                          width: Get.width,
                                          child: Center(
                                            child: Text(" ADD NEW TASBEEH" ,style: TextStyle(
                                                color: Colors.green.shade700 ,fontWeight: FontWeight.bold ,
                                                fontSize: 17),
                                        ),
                                          ),),
                                        Expanded(
                                          child: Padding(
                                            padding: const EdgeInsets.symmetric(horizontal: 15.0),
                                            child: Column(children: [

                                              TextFormField(
                                                decoration: const InputDecoration(
                                                  hintText: "Tasbeeh name"
                                                ),
                                                onChanged:(value1){
                                                  tasbeeh_name=value1;


                                                },
                                              ),
                                              TextFormField( onChanged:(value2){
                                                discription= value2;

                                              },

                                                decoration: const InputDecoration(
                                                  hintText: "Discription",
                                              ),),
                                              TextFormField(
                                                onChanged:(value3){
                                                  counting_value = value3 as int ;

                                                },
                                                keyboardType:TextInputType.number ,
                                                decoration: const InputDecoration(
                                                  hintText: "Counting value",

                                              ),),

                                            ],),
                                          ),
                                        ),
                                        Padding(
                                          padding: const EdgeInsets.symmetric(vertical: 15.0),
                                          child: Row(
                                            mainAxisAlignment: MainAxisAlignment.end,
                                            children:[


                                              InkWell(
                                                onTap: (){
                                                  Get.back();

                                                },
                                                child: Container(
                                                    color: Colors.red,
                                                    child: Padding(
                                                  padding: const EdgeInsets.all(8.0),
                                                  child: Text("Cancel",style: TextStyle(
                                                    color: Colors.green.shade700,
                                                    fontSize: 15
                                                  ) ,),
                                                )),
                                              ),
                                              Padding(
                                                padding: const EdgeInsets.symmetric(horizontal:13.0),
                                                child: Container(
                                                    color: Colors.red,
                                                    child: Padding(
                                                  padding: const EdgeInsets.all(8.0),
                                                  child: Text("    Ok    ",style: TextStyle(
                                                    color: Colors.green.shade700 ,
                                                    fontSize: 15
                                                  ) ,),
                                                )),
                                              ),


                                            ],
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                              ],
                            ),
                            barrierDismissible: false,
                          );
                        },
                        child: CircleAvatar(
                          child: Icon(Icons.add),
                          radius: 23,
                          backgroundColor: Colors.green,
                        ),
                      ),
                    ),
                    CircleAvatar(
                      child: Text(
                        "×",
                        style: TextStyle(fontSize: 35),
                      ),
                      radius: 23,
                      backgroundColor: Colors.green,
                    ),
                  ],
                ),
                Expanded(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Row(
                        children: [
                          SizedBox(width:Get.width*0.25),
                          Text(
                            "$_counter",
                            style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 35,
                                color: Colors.lightGreenAccent),
                          ),
                        ],
                      ),
                      SizedBox(
                        height: Get.height * 0.18,
                      ),
                      InkWell(
                        onTap: () {
                          increament();
                        },
                        child: CircleAvatar(
                          radius: 75,
                          backgroundColor: Colors.lightGreenAccent,
                          child: CircleAvatar(
                            radius: 70,
                            backgroundColor: Colors.red.shade900,
                            child: Text(
                              "COUNTER",
                              style: TextStyle(
                                  fontSize: 25,
                                  color: Colors.lightGreenAccent.withOpacity(0.6)),
                            ),
                          ),
                        ),
                      )
                    ],
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}


