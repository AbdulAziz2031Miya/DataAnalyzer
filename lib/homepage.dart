import 'package:flutter/material.dart';

class myHomePage extends StatefulWidget {
  const myHomePage({Key? key}) : super(key: key);

  @override
  State<myHomePage> createState() => _myHomePageState();
}

class _myHomePageState extends State<myHomePage> {
  @override

  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      drawer: Drawer(
        backgroundColor:Colors.purple.shade600,
        child: Column(
          children: [
            Container(
              color: Colors.white,
            height: 180,
              child:Column(
                children: [],
              ),
        ),

            SizedBox(
              height: 20,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
              Text("hello",textAlign:TextAlign.left,textScaleFactor: 2,),
              ],
            ),



          ],

        ),

      ),
      appBar:AppBar(
        backgroundColor: Colors.purple,
        title: Text("Data is Everywhere"),

      ),
      body: Container(
        width: double.infinity,
        height:double.infinity,
        color: Colors.purple,
        alignment: Alignment.center,
        child: Container(
          width: 200,
          height: 200,
          color: Colors.grey.shade300

          ,
        ),
      ),
    );
  }
}
