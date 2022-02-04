import 'package:flutter/material.dart';
import 'package:ioasys_projects/modules/todo/components/input_task_widget.dart';
import 'package:ioasys_projects/modules/todo/components/list_task_widget.dart';
import 'package:ioasys_projects/shared/widgets/app_bar.dart';

import 'todo_list_controller.dart';

class TodoListPage extends StatefulWidget {
  const TodoListPage({Key? key}) : super(key: key);

  @override
  _TodoListPageState createState() => _TodoListPageState();
}

class _TodoListPageState extends State<TodoListPage> {
  var controller = ToDoController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const MyAppBar(title: 'Lista de tarefas'),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.fromLTRB(17, 24, 17, 40),
            child: InputTaskWidget(
              labelText: 'Nova Tarefa',
              textButton: 'ADD',
              textController: controller.textController,
              onPressed: () {
                setState(() {
                  controller.addToDo();
                });
              },
            ),
          ),
          Expanded(
            child: ListTaskWidget(
              toDoList: controller.listToDo,
              onChanged: (value, index) => setState(() {
                controller.updateStatusTask(value, index);
              }),
              onRemoved: (index) {
                setState(() {
                  controller.onRemovedTaskOfList(index);
                });
              },
            ),
          ),
        ],
      ),
    );
  }
}
