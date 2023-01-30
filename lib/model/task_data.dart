import 'package:flutter/material.dart';
import 'package:todoeyyyy/model/task.dart';

class TaskData extends ChangeNotifier {
  List<Task> listOfTasks = [
    Task(task: 'Buy a Milk'),
    Task(task: 'Buy some shoes'),
    Task(task: 'Buy a bread'),
  ];

  void addTask(var title) {
    final task = Task(task: title);
    listOfTasks.add(task);
    notifyListeners();
  }

  void updateTask(Task task) {
    task.toggle();
    notifyListeners();
  }

  void removeTask(Task task) {
    listOfTasks.remove(task);
    notifyListeners();
  }
}
