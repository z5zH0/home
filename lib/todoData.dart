// ignore_for_file: file_names

import 'todo.dart';

class TodoData{
  List<Todo> TodoDB =
      [
        Todo('Turn off all the electronics for 1 hour', false, DateTime(0), 1),
        Todo('Go to work by bicycle', false, DateTime(0), 1),
        Todo('Keep indoor temperature 20℃', false, DateTime(0), 1),
      ];

  int getNum(){
    return TodoDB.length;
  }

  String getContent(int index){
    return TodoDB[index].todoContent;
  }

  bool getFinish(int index){
    return TodoDB[index].todoFinish;
  }

  DateTime getFinishTime(int index){
    return TodoDB[index].todoFinishTime;
  }

  int getPoint(int index) {
    return TodoDB[index].todoPoint;
  }
}