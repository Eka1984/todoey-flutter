import 'package:flutter/material.dart';
import 'package:todoey_flutter/widgets/task_tile.dart';
import 'package:provider/provider.dart';
import 'package:todoey_flutter/models/task_data.dart';

class TasksList extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Consumer<TaskData>(
      builder: (context, taskData, child) {
        print('Rebuilding TasksList with ${taskData.taskCount} tasks'); // Debug statement
        return ListView.builder(itemBuilder: (context, index) {
          final task = taskData.tasks[index];
          return TaskTile(
              isChecked: task.isDone,
              taskTitle: task.name,
              checkboxCallback: (bool? checkboxState) {
                taskData.updateTask(taskData.tasks[index]);
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