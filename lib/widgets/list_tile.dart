import 'package:flutter/material.dart';
import 'package:flutter_neumorphic/flutter_neumorphic.dart';
import 'package:provider/provider.dart';
import 'package:todoeyyyy/model/task_data.dart';

class ListTiles extends StatelessWidget {
  final bool isChecked;
  final String title;
  var checkBoxCallBack;
  var longPress;
  ListTiles(
      {this.isChecked = false,
      required this.title,
      required this.checkBoxCallBack,
      this.longPress});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onLongPress: longPress,
      child: ListTile(
        leading: NeumorphicCheckbox(
          padding: const EdgeInsets.all(2),
          onChanged: checkBoxCallBack,
          value: isChecked,
        ),
        title: Text(
          title,
          style: TextStyle(
              decoration: isChecked ? TextDecoration.lineThrough : null),
        ),
      ),
    );
  }
}
