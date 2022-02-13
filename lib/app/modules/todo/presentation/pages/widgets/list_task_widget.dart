import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';

import 'task_item_widget.dart';

class ListTaskWidget extends StatelessWidget {
  final List toDoList;
  final Function(bool?, int) onChanged;
  final Function(int) onRemoved;

  const ListTaskWidget({
    Key? key,
    required this.onChanged,
    required this.toDoList,
    required this.onRemoved,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Observer(builder: (_) {
      return ListView.builder(
        itemCount: toDoList.length,
        itemBuilder: (_, index) {
          var task = toDoList[index];
          return TaskItemWidget(
            title: task.description,
            completed: task.completed,
            onChanged: (v) => onChanged(v, index),
            onDismissed: (direction) => onRemoved(index),
          );
        },
      );
    });
  }
}
