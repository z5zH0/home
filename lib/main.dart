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
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Center(child: CircularPercentIndicator(
          radius: 300.0,
          lineWidth: 10.0,
          percent: 0.9,
          center: Image.asset('images/100%.png', width: 200.0),
          progressColor: lightGreen,
        )
        ),
        ),
    );
  }
}