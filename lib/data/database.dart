import 'package:hive_flutter/hive_flutter.dart';

class TodoDatabase {
  List todoList = [];
  //refrence our box
  final _mybox = Hive.box('mybox');

  //run this method if 1st time EVER open the app
  void createInitData() {
    todoList = [
      ['Follow Mitch Koko tutorial', false],
      ['Excersie what you learn', false],
    ];
  }

  //load data from the database
  void loadData() {
    todoList = _mybox.get('TODOLIST');
  }

  //update database
  void updateDatabase() {
    _mybox.put('TODOLIST', todoList);
  }
}
