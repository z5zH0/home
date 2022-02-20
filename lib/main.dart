import 'package:flutter/material.dart';
import 'package:percent_indicator/percent_indicator.dart';
import 'package:home/resources.dart';
import 'package:home/TodoListWidget.dart';

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

  double percent = 100;
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
            center: Image.asset('images/plant.png'),
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

          GestureDetector(
            onTap: ()
            {
              FlutterDialog();
            },
            child: TodoList(),
          )
        ],
      ),
    );
  }

  void FlutterDialog() {
    showDialog(
        context: context,
        builder: (BuildContext context) {
          return AlertDialog(
            // RoundedRectangleBorder - Dialog 화면 모서리 둥글게 조절
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(10.0),
                side: BorderSide(color: deepGreen, width: 3)
            ),
            //Dialog Main Title
            title: Text("TODO", style: TextStyle(
              fontFamily: 'Inter-Regular',
              fontSize: 20.0,
              fontWeight: FontWeight.bold,
            )),
            //
            content: Text('투두'),
            actions: <Widget>[
              TextField(
                showCursor: false,

                style: TextStyle(
                    fontFamily: 'Inter-Regular',
                    fontSize: 20.0,
                    fontWeight: FontWeight.bold,
                    color: Colors.white),

                decoration: InputDecoration(
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(8),
                      borderSide: BorderSide(
                        width: 0,
                        style: BorderStyle.none)
                    ),
                  hintText: 'Add a task...',
                  hintStyle: TextStyle(
                    color: Colors.white,
                    fontFamily: 'Inter-Regular',
                    fontSize: 20.0,
                    fontWeight: FontWeight.bold,
                  ),
                  filled: true,
                  fillColor: gray,
                  )
                ),
            ],
          );
        });
  }
}