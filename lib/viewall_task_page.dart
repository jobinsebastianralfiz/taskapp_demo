import 'package:flutter/material.dart';
import 'package:taskapp/task_service.dart';
import 'package:taskapp/taskmodel.dart';

class ViewAllTasks extends StatefulWidget {
  const ViewAllTasks({Key? key}) : super(key: key);

  @override
  _ViewAllTasksState createState() => _ViewAllTasksState();
}

class _ViewAllTasksState extends State<ViewAllTasks> {
  TextEditingController _titleController = TextEditingController();
  TextEditingController _contentController = TextEditingController();
  List<TaskModel> tasks = [];

  TaskService _taskService = TaskService();

  void getTasks() {
    tasks = _taskService.getAllTask();
  }

  @override
  void initState() {
    super.initState();
    getTasks();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.purple,
        title: Text('Task List'),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          showDialog(
            context: context,
            builder: (context) {
              return AlertDialog(
                title: Text('Add Task'),
                content: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    TextField(
                      controller: _titleController,
                      decoration: InputDecoration(labelText: 'Title'),
                    ),
                    TextField(
                      controller: _contentController,
                      decoration: InputDecoration(labelText: 'Content'),
                    ),
                  ],
                ),
                actions: [
                  ElevatedButton(
                    onPressed: () {
                      Navigator.pop(context);
                    },
                    child: Text('Cancel'),
                  ),
                  ElevatedButton(
                    onPressed: () {
                      TaskModel task = TaskModel(
                        title: _titleController.text,
                        content: _contentController.text,
                        status: 1,
                        createdAt: DateTime.now(),
                      );

                      _taskService.addTask(task);
                      // Update the state and trigger a rebuild
                      setState(() {
                        getTasks();
                      });
                      print('Task added: ${task.title}');
                      Navigator.pop(context);
                    },
                    child: Text('Save'),
                  ),
                ],
              );
            },
          );
        },
        child: Icon(Icons.add),
      ),
      body: Container(
        height: double.infinity,
        width: double.infinity,
        child: ListView.builder(
          itemCount: tasks.length,
          itemBuilder: (context, index) {
            TaskModel task = tasks[index];
            return ListTile(
              title: Text(task.title ?? ''),
              subtitle: Text(task.content ?? ''),
            );
          },
        ),
      ),
    );
  }
}
