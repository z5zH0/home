import 'package:flutter/material.dart';
import 'package:percent_indicator/percent_indicator.dart';
import 'package:home/resources.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {

  double percent = 0.9;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          title: Text('Home', style: TextStyle(color: darkGray)),
          centerTitle: true,
          elevation: 0.0,
          backgroundColor: Colors.white,
        ),
        body: Row(
          children: [

            CircularPercentIndicator(
              radius: 200.0,
              lineWidth: 10.0,
              percent: percent,
              center: Image.asset('images/100%.png', width: 120.0),
              progressColor: lightGreen,
              backgroundColor: Colors.white,
            ),
            //ListView.builder(itemCount:1, itemBuilder: (a,index),)
          ],
        ),
        ),
    );
  }
}