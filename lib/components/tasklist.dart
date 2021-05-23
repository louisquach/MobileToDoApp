import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:todo_list/components/taskData.dart';
import 'package:todo_list/components/taskitem.dart';

class TaskList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Consumer<TaskData>(
      builder: (context, taskData, child) {
        return ListView.builder(
          itemBuilder: (context, index) {
            final task = taskData.tasks[index];
            return TaskItem(
                name: task.name,
                isChecked: task.isDone,
                checkboxCallback: (checkboxState) {
                  taskData.checkTask(task);
                },
                longPressCallback: () {
                  taskData.deleteTask(task);
                },
            );
          },
          itemCount: taskData.taskCount,
        );
      },
    );
  }
}

