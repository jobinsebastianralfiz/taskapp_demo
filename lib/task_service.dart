import 'package:taskapp/taskmodel.dart';

class TaskService{

  List<TaskModel> tasks=[];
  // add



  addTask(TaskModel task){


    tasks.add(task);
    print(tasks);


  }

  List<TaskModel>getAllTask(){

    print(tasks);

    return tasks;
  }


  //edit


  //del



}