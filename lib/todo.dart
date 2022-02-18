class todo{
  String todoName = '';
  bool todoFinish = false;
  DateTime todoFinishTime = DateTime(2022,02,18,0,0,0);

  todo(String name, bool finish, DateTime finishTime){
    todoName = name;
    todoFinish = finish;
    todoFinishTime = finishTime;
  }
}