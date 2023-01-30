import 'package:flutter/material.dart';
import 'package:flutter_neumorphic/flutter_neumorphic.dart';
import 'package:provider/provider.dart';
import 'package:todoeyyyy/model/task_data.dart';

class AddTaskScreen extends StatelessWidget {
  AddTaskScreen({
    Key? key,
  }) : super(key: key);
  var taskTextController = TextEditingController();
  String? newTaskTitle;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        automaticallyImplyLeading: true,
        iconTheme: IconThemeData(color: Colors.blueAccent),
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Container(
            padding: const EdgeInsets.symmetric(horizontal: 25, vertical: 20),
            width: double.infinity,
            child: Column(
              children: [
                const CircleAvatar(
                  radius: 100,
                  child: Image(
                    image: AssetImage('images/add.png'),
                  ),
                ),
                const SizedBox(height: 30),
                const Text(
                  'Add New Task',
                  textAlign: TextAlign.center,
                  style: TextStyle(fontSize: 20),
                ),
                const SizedBox(height: 10),
                const Text(
                  "Be productive today, and let's make some wonderful world with it",
                  textAlign: TextAlign.center,
                  style: TextStyle(fontSize: 15, color: Colors.grey),
                ),
                const SizedBox(height: 10),
                TextFormField(
                  controller: taskTextController,
                  onChanged: (newText) {
                    newTaskTitle = newText;
                  },
                  decoration: InputDecoration(
                    suffixIcon: IconButton(
                      color: taskTextController.text.isNotEmpty
                          ? Colors.grey
                          : Colors.blueAccent,
                      onPressed: () {
                        Provider.of<TaskData>(context, listen: false)
                            .addTask(newTaskTitle);
                        Navigator.pop(context);
                      },
                      icon: const Icon(Icons.send_outlined),
                    ),
                    border: const OutlineInputBorder(),
                    hintText: 'Enter the task...',
                    hintStyle: const TextStyle(fontSize: 13),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
