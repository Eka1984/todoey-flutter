import 'package:flutter/foundation.dart';
import 'task.dart';
import 'package:collection/collection.dart';

class TaskData extends ChangeNotifier {

  List<Task> _tasks = [
    Task(name: 'Buy milk'),
    Task(name: 'Buy eggs'),
    Task(name: 'Buy bread'),
  ];

 UnmodifiableListView<Task> get tasks {
    return UnmodifiableListView(_tasks);
  }

  int get taskCount {
    return _tasks.length;
  }

  void addTask(String newTaskTitle) {
    final task = Task(name: newTaskTitle);
    _tasks.add(task);
    notifyListeners();
    print('Task added: $newTaskTitle'); // Debug statement
    print('Total tasks: ${_tasks.length}'); // Debug statement
  }

  void updateTask(Task task) {
   task.toggleDone();
   notifyListeners();
  }

  void deleteTask(Task task) {
    _tasks.remove(task);
    notifyListeners();
  }

}