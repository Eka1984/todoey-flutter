import 'package:flutter/material.dart';
import 'package:todoey_flutter/constants.dart';

class AddTaskScreen extends StatelessWidget {

    final void Function(String?)? addTaskCallback;

    AddTaskScreen({this.addTaskCallback});


  @override
  Widget build(BuildContext context) {

    late String? newTaskTitle;

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
                onPressed: () {
                  addTaskCallback!(newTaskTitle);
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
