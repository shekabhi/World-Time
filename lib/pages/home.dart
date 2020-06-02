import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {

  Map data = {} ;

  @override
  Widget build(BuildContext context) {

    data = data.isNotEmpty ? data : ModalRoute.of(context).settings.arguments;
    //print(data);


    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.fromLTRB(0,160.0,0,0),
        child: SafeArea(child: Column(
          children: <Widget>[
            FlatButton.icon(
              onPressed: () async {
                dynamic result = await Navigator.pushNamed(context, '/location');
                if(result != null){
                  setState(() {
                    data = {
                      'time': result['time'],
                      'location': result['location'],
                      'flag': result['flag']
                    };
                  });
                }
              },
              icon: Icon(Icons.edit_location) ,
              label: Text('Tap To Edit Location'),
                ),
            SizedBox(height: 80.0,),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Text(
                  data['location'],
                  style: TextStyle(
                    fontSize: 66.0,
                    letterSpacing: 2.0
                  ),
                )
              ],
            ),
            SizedBox(height: 20.0,),
            Text(
              data['time'],
              style: TextStyle(
                fontSize: 28.0,
              ),
            )
          ],
        )),
      ),
    );
  }
}
