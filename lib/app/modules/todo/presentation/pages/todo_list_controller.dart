import 'package:flutter/material.dart';
import 'package:ioasys_projects/app/modules/todo/presentation/models/task_model.dart';
import 'package:mobx/mobx.dart';

part 'todo_list_controller.g.dart';

class ToDoController = ControllerBase with _$ToDoController;

abstract class ControllerBase with Store {
  TextEditingController textController = TextEditingController();

  @observable
  ObservableList<TaskModel> listToDo = ObservableList<TaskModel>.of([]);

  @action
  void addToDo() {
    if (textController.text.isNotEmpty) {
      var newTask = TaskModel(description: textController.text);
      listToDo.add(newTask);
      textController.clear();
    }
  }

  @action
  void updateStatusTask(bool? value, int index) {
    listToDo[index].completed = value ?? false;
  }

  @action
  void onRemovedTaskOfList(int index) {
    listToDo.removeAt(index);
  }
}
