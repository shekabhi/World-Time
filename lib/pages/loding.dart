import 'package:flutter/material.dart';
import 'package:worldtime/services/world_time.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';


class Loding extends StatefulWidget {
  @override
  _LodingState createState() => _LodingState();
}

class _LodingState extends State<Loding> {


  void setupWorldTime() async{
    WorldTime instance = WorldTime(location: 'India' , flag: 'india.png' , url: 'Asia/Kolkata') ;
    await instance.getTime();


    Navigator.pushReplacementNamed(context, '/home' , arguments: {
      'location' : instance.location,
      'flag': instance.flag,
      'time' : instance.time,
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
      body: Center(
        child: SpinKitFadingCircle(
          color: Colors.black54,
          size: 70.0,
        ),
      )
    );
  }
}
