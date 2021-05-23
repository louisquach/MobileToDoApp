import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:todo_list/components/taskData.dart';

class TaskItem extends StatelessWidget {
  final bool isChecked;
  final String name;
  final Function checkboxCallback;
  final Function longPressCallback;
  TaskItem({this.name, this.isChecked, this.checkboxCallback, this.longPressCallback});
  @override
  Widget build(BuildContext context) {
    return ListTile(
      onLongPress: longPressCallback,
      title: Text(
        name,
      style: TextStyle(
        decoration: isChecked ? TextDecoration.lineThrough : null
      ),),
      trailing: Checkbox(
          activeColor: Colors.lightBlueAccent,
          value: isChecked,
          onChanged: checkboxCallback
      )
    );
  }
}

