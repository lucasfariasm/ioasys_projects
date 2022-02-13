import 'package:flutter_modular/flutter_modular.dart';
import 'package:ioasys_projects/app/modules/todo/presentation/pages/todo_list_controller.dart';
import 'presentation/pages/todo_list_page.dart';

class TodoListModule extends Module {
  @override
  List<Bind> get binds => [
    // Bind.factory((i) => TodoListStore()),
    Bind.factory((i) => ToDoController()),
  ];

  @override
  List<ModularRoute> get routes => [
    ChildRoute('/', child: (context, args) => const TodoListPage())
  ];
}