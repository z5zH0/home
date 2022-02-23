import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:percent_indicator/percent_indicator.dart';
import 'package:home/resources.dart';
import 'package:home/TodoListWidget.dart';
import 'todo.dart';

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
  TextEditingController inputString = TextEditingController();
  String oneTodo = '';

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
            center: ElevatedButton(
              child: Text('Plant your\nown tree!', textAlign: TextAlign.center, style: TextStyle(color: Colors.black, fontFamily: 'Inter-regular', fontSize: 35, fontWeight: FontWeight.bold)),
            onPressed: () {
              PlantTreeDialog();
            },
            style: ElevatedButton.styleFrom(
              primary: lightGreen,
              fixedSize: Size(300, 300),
              shape: CircleBorder(),
            ),),
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
              AddTodoDialog();
            },
            child: TodoList(),
          )
        ],
      ),
    );
  }

addTodo(Todo todo) {
    return setState(() {
      oneTodo = todo.todoContent;
      Text('$oneTodo');
    });
  }

  void AddTodoDialog() {
    showDialog(
        context: context,
        builder: (BuildContext context) {
          return Center(
            child: SingleChildScrollView(
              child: AlertDialog(
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

                actions: <Widget>[
                  TextField(
                    controller: inputString,
                    textInputAction: TextInputAction.go,
                    onSubmitted: (value) {
                      Todo newTodo = Todo(inputString.text, false, DateTime(0,0,0,0,0), 2);
                      return addTodo(newTodo);
                    },
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
                  content: Text('$oneTodo'),
            ),
          ),
          );
        });
  }


  void PlantTreeDialog() {
    showDialog(
        context: context,
        builder: (BuildContext context) {
          return Center(
            child: SingleChildScrollView(
              child: AlertDialog(
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10.0),
                    side: BorderSide(color: deepGreen, width: 3)
                ),
                
                content: Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(10.0),
                      child: Text('You got a tree!\nNow you can plant it in',
                          textAlign: TextAlign.center,
                          style: TextStyle(
                          fontFamily: 'Inter-Regular',
                          fontSize: 20.0,
                          fontWeight: FontWeight.bold,
                          color: Colors.black)),
                    ),
                    Container(
                      margin: const EdgeInsets.all(20.0),
                      padding: const EdgeInsets.fromLTRB(15,5,15,10),
                      decoration: BoxDecoration(
                        border:
                        Border.all(color: deepGreen, width: 3),
                        borderRadius: BorderRadius.all(
                          Radius.circular(15.0)),
                      color: deepGreen),
                      child: Column(
                        children: [
                          Icon(
                            Icons.location_on,
                            color: Colors.red,
                            size: 30.0,
                          ),
                          Text('Texas,\nUnited State',
                            textAlign: TextAlign.center,
                            style: TextStyle(
                                fontFamily: 'Inter-Regular',
                                fontSize: 20.0,
                                fontWeight: FontWeight.bold,
                                color: Colors.white)
                            ),
                        ],
                      ),
                    ),

                  ],
                ),

                actions: <Widget>[
                ],
                
              ),
            ),
          );
        });
  }

}