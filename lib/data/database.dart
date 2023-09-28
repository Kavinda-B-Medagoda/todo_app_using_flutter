import 'package:hive/hive.dart';

class ToDoDataBase {
  List toDoList = [];
  // ref the hive box
  final _myBox = Hive.box('mybox');

  // if this is the first time ever opening this app

  void createinitialdata() {
    toDoList = [
      ["Make Tutorial", false],
      ["Make rice", false],
    ];
  }

  // load the data from the database

  void loadData() {
    toDoList = _myBox.get("TODOLIST");
  }

  // update the database

  void updateData() {
    _myBox.put("TODOLIST", toDoList);
  }
}
