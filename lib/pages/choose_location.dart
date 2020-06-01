import 'package:flutter/material.dart';

class ChooseLocation extends StatefulWidget {
  @override
  _ChooseLocationState createState() => _ChooseLocationState();
}

class _ChooseLocationState extends State<ChooseLocation> {


  void getData() async{
    // simulate network request for a username
    String userName =  await Future.delayed(Duration(seconds: 3 ), (){
      return 'yashi' ;

    });

    // simulate network request to get bio of the username
    String bio =  await Future.delayed(Duration(seconds: 2 ), (){
      return 'vegan, musician & egg collector' ;

    });

    print('$userName + $bio');
  }

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    getData();
  }
  @override
  Widget build(BuildContext context) {

    return Scaffold(
      backgroundColor: Colors.grey[200],
      appBar: AppBar(
        backgroundColor: Colors.blue[900],
        title: Text('Choose A Location'),
        centerTitle: true,
        elevation: 0.0,
      ),

    );
  }
}
