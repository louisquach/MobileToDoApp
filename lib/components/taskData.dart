import 'package:flutter/cupertino.dart';
import 'package:flutter/foundation.dart';
import 'package:todo_list/models/task.dart';
import 'dart:collection';

class TaskData extends ChangeNotifier {
  List<Task> _tasks = [
    Task(name:'Eat'),
    Task(name:'Sleep'),
    Task(name:'Learning')
  ];

  void addItem(String itemName) {
    _tasks.add(Task(name: itemName));
    notifyListeners();
  }

  void deleteTask(Task task) {
    _tasks.remove(task);
    notifyListeners();
  }

  UnmodifiableListView<Task> get tasks {
    return UnmodifiableListView(_tasks);
  }

  int get taskCount {
    return _tasks.length;
  }

  void checkTask(Task task) {
    task.toggleCheckbox(); // task has a function to change isChecked state
    notifyListeners();
  }
}