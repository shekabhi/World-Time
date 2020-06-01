import 'package:flutter/material.dart';
import 'package:worldtime/services/world_time.dart';


class Loding extends StatefulWidget {
  @override
  _LodingState createState() => _LodingState();
}

class _LodingState extends State<Loding> {

  String time = "LODING" ;

  void setupWorldTime() async{
    WorldTime instance = WorldTime(location: 'Berlin' , flag: 'germany.png' , url: 'Europe/Berlin') ;
    await instance.getTime();
    print(instance.time);
    setState(() {
      time = instance.time;
    });
  }

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    setupWorldTime();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: EdgeInsets.all(50.0),
        child: Text(time),
      ),
    );
  }
}