import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:todo_list/components/taskData.dart';

class AddTask extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // create newItem after the widget was initialise so we don't need to construct it
    String newItem;
    return Container(
      color: Color(0xFF757575),
      child: Container(
        padding: EdgeInsets.symmetric(vertical: 30.0, horizontal: 60.0),
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(30.0),
            topRight: Radius.circular(30.0)
          ),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Center(
              child: Text(
                "Add Task",
                style: TextStyle(
                    color: Colors.lightBlueAccent,
                    fontSize: 30.0,
                    fontWeight: FontWeight.bold,
                ),
              ),
            ),
            SizedBox(height: 30,),  
            TextField(
              obscureText: false,
              textAlign: TextAlign.center,
              autofocus: true,
              onChanged: (text) {
                newItem = text;
              },
            ),
            SizedBox(height: 30,),
            TextButton(
              child: Text(
                'Add',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 25.0,
                ),
                ),
              onPressed: () {
                Provider.of<TaskData>(context, listen: false).addItem(newItem);
                Navigator.pop(context);
              },
              style: ButtonStyle(backgroundColor: MaterialStateProperty.all(Colors.lightBlueAccent)),
            ),
          ]
        ),
      ),
    );
  }
}
