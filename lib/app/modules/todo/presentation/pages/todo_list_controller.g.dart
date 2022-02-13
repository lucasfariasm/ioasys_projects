// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'todo_list_controller.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic

mixin _$ToDoController on ControllerBase, Store {
  final _$listToDoAtom = Atom(name: 'ControllerBase.listToDo');

  @override
  ObservableList<TaskModel> get listToDo {
    _$listToDoAtom.reportRead();
    return super.listToDo;
  }

  @override
  set listToDo(ObservableList<TaskModel> value) {
    _$listToDoAtom.reportWrite(value, super.listToDo, () {
      super.listToDo = value;
    });
  }

  final _$ControllerBaseActionController =
      ActionController(name: 'ControllerBase');

  @override
  void addToDo() {
    final _$actionInfo = _$ControllerBaseActionController.startAction(
        name: 'ControllerBase.addToDo');
    try {
      return super.addToDo();
    } finally {
      _$ControllerBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  void updateStatusTask(bool? value, int index) {
    final _$actionInfo = _$ControllerBaseActionController.startAction(
        name: 'ControllerBase.updateStatusTask');
    try {
      return super.updateStatusTask(value, index);
    } finally {
      _$ControllerBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  void onRemovedTaskOfList(int index) {
    final _$actionInfo = _$ControllerBaseActionController.startAction(
        name: 'ControllerBase.onRemovedTaskOfList');
    try {
      return super.onRemovedTaskOfList(index);
    } finally {
      _$ControllerBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  String toString() {
    return '''
listToDo: ${listToDo}
    ''';
  }
}
