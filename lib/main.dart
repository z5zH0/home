import 'package:flutter/material.dart';
import 'package:percent_indicator/percent_indicator.dart';
import 'package:home/resources.dart';
import 'package:home/todo.dart';

void main() => runApp(MyApp());



class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Home()
    );
  }
}

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {

  double percent = 80;
  int userPoint = 250;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: Text('Home', style: TextStyle(color: darkGray)),
        centerTitle: true,
        elevation: 0.0,
        backgroundColor: Colors.white,
      ),

      body: Column(
        children:[
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Icon(
                  Icons.control_point_duplicate,
                  color: Colors.black,
                  size: 35.0,
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text('$userPoint',
                    style: TextStyle(
                      fontFamily: 'Inter-Regular',
                      fontSize: 25.0,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ],
            ),
          ),

          CircularPercentIndicator(
            radius: 300.0,
            lineWidth: 10.0,
            percent: percent/100,
            center: Image.asset('images/100%.png', width: 190.0),
            progressColor: lightGreen,
            backgroundColor: Colors.transparent,
          ),

          Padding(
            padding: const EdgeInsets.all(20.0),
            child: Text('${percent}%',
                style: TextStyle(
                  fontFamily: 'Inter-Regular',
                  fontSize: 30.0,
                  fontWeight: FontWeight.bold,
                ),
          ),
    ),
    ],
    ),
    );
  }
}
