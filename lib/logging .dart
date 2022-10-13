import 'package:custom_switch/custom_switch.dart';
import 'package:flutter/material.dart';
class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {

  bool status = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Limit the data with packages'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text("plase turn on the switch to set the record",
            textAlign:TextAlign.center,
              textScaleFactor: 2,


              ),
            CustomSwitch(
              activeColor: Colors.green,
              value: status,
              onChanged: (value) {
                print("Data Remaining : $value");
                setState(() {
                  status = value;
                });
              },
            ),
            SizedBox(height: 12.0,),
            Text('Data Remaining  : $status', style: TextStyle(
                color: Colors.black,
                fontSize: 28.0
            ),)
          ],
        ),
      ),
    );
  }
}