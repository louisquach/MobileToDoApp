import 'package:flutter/material.dart';
import 'package:todo_list/components/taskData.dart';
import 'package:todo_list/components/tasklist.dart';
import 'package:todo_list/screens/add_task_screen.dart';
import 'package:provider/provider.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.lightBlueAccent,
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          showModalBottomSheet(
              context: context,
              builder: (context) => AddTask()
          );
        },
        child: Icon(
          Icons.add
        ),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
            Container(
              padding: EdgeInsets.only(left: 30, top: 60, right: 30, bottom: 30),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    CircleAvatar(
                      backgroundColor: Colors.white,
                      radius: 30.0,
                      child: Icon(
                        Icons.list,
                        color: Colors.lightBlueAccent,
                        size: 30.0,
                      ),
                    ),
                    SizedBox(height: 30.0,),
                    Text(
                      "To Do List",
                      style: TextStyle(
                        fontSize: 50.0,
                        color: Colors.white
                      ),
                    ),
                    Text(
                      "You have ${Provider.of<TaskData>(context).taskCount} tasks",
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 20.0
                      ),
                    ),
                  ],
                )
            ),
            Expanded(
              child: Container(
                padding: EdgeInsets.symmetric(horizontal: 20.0, vertical: 20.0),
                height: 300,
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(20.0),
                        topRight: Radius.circular(20.0)
                    )
                ),
                child: TaskList(),
              ),
            )
          ]
        ),
    );
  }
}


