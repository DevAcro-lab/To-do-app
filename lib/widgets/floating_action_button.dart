import 'package:flutter/material.dart';
import 'package:flutter_neumorphic/flutter_neumorphic.dart';

import '../screens/add_task_screen.dart';

class FloatingButton extends StatelessWidget {
  const FloatingButton({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return NeumorphicFloatingActionButton(
      style: const NeumorphicStyle(
        boxShape: NeumorphicBoxShape.circle(),
        intensity: 5,
      ),
      onPressed: () {
        Navigator.push(
            context, MaterialPageRoute(builder: (context) => AddTaskScreen()));
      },
      child: Center(
        child: NeumorphicIcon(
          size: 30,
          Icons.add,
          style: const NeumorphicStyle(color: Colors.black),
        ),
      ),
    );
  }
}
