import 'package:flutter/material.dart';
import 'package:todoey_flutter/constants.dart';
import '../models/task.dart';
import 'package:provider/provider.dart';
import 'package:todoey_flutter/models/task_data.dart';

class AddTaskScreen extends StatelessWidget {

  @override
  Widget build(BuildContext context) {

    String newTaskTitle = '';

    return Container(
      padding: EdgeInsets.all(30),
      width: double.infinity,
      child: Column(
        children: [
          Text(
              'Add Task',
            style: TextStyle(
              fontSize: 30.0,
              color: Colors.lightBlueAccent,
            ),
          ),
          TextField(
            onChanged: (value) {
              newTaskTitle = value;
            },
            autofocus: true,
            textAlign: TextAlign.center,
            decoration: inputFieldDecor,
          ),
          SizedBox(height: 20),
          SizedBox(
            width: double.infinity,
            child: TextButton(
                onPressed: () async {
                  if (newTaskTitle.isNotEmpty) {
                    Provider.of<TaskData>(context, listen: false).addTask(newTaskTitle);
                    Navigator.pop(context);
                    print('Task screen dismissed'); // Debug statement
                  }
                },
                child: Padding(
                  padding: const EdgeInsets.symmetric(vertical: 13.0),
                  child: Text('Add',
                      style: TextStyle(
                        fontSize: 20,
                        color: Colors.white,
                      ),
                  ),
                ),
              style: TextButton.styleFrom(
                backgroundColor: Colors.lightBlueAccent,
              ),
            ),
          )
        ],
      ),
    );
  }
}
