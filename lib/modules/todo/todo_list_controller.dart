import 'package:flutter/material.dart';
import 'package:ioasys_projects/modules/todo/models/task_model.dart';

class ToDoController{
  TextEditingController textController = TextEditingController();
  List<TaskModel> listToDo = [];

  void addToDo() {
    if(textController.text.isNotEmpty){
      var newTask = TaskModel(description: textController.text);
      listToDo.add(newTask);
      textController.clear();
    }
  }

  void updateStatusTask(bool? value, int index) {
    listToDo[index].completed = value ?? false;
  }

  void onRemovedTaskOfList(int index){
    listToDo.removeAt(index);
  }
}