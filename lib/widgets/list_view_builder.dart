import 'package:flutter/material.dart';
import 'package:flutter_neumorphic/flutter_neumorphic.dart';
import 'package:provider/provider.dart';
import '../model/task_data.dart';
import 'list_tile.dart';

class TasksListView extends StatefulWidget {
  TasksListView({Key? key}) : super(key: key);

  @override
  State<TasksListView> createState() => _TasksListViewState();
}

class _TasksListViewState extends State<TasksListView> {
  @override
  Widget build(BuildContext context) {
    return Consumer<TaskData>(
      builder: (context, taskData, child) {
        return ListView.builder(
          itemCount: taskData.listOfTasks.length,
          itemBuilder: (context, index) {
            return ListTiles(
              longPress: () {
                taskData.removeTask(taskData.listOfTasks[index]);
              },
              title: taskData.listOfTasks[index].task,
              isChecked: taskData.listOfTasks[index].isDone,
              checkBoxCallBack: (checkBoxState) {
                taskData.updateTask(taskData.listOfTasks[index]);
              },
            );
          },
        );
      },
    );
  }
}
