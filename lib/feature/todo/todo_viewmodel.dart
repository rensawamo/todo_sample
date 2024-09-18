import 'package:flutter/material.dart';
import 'package:flutter_todo/core/model/todo.dart';
import 'package:flutter_todo/feature/todo/todo_state.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:uuid/uuid.dart';

part 'todo_viewmodel.g.dart';

@riverpod
class TodoViewmodel extends _$TodoViewmodel {
  TodoViewmodel() : super();

  @override
  ToDoState build() {
    return ToDoState(
      todosList: [],
      todoController: TextEditingController(),
    );
  }

  void changeTodo(String id) {
    final newToDoList = state.todosList.map((e) {
      if (e.id == id) {
        return e.copyWith(isDone: !e.isDone);
      }
      return e;
    }).toList();
    state = state.copyWith(todosList: newToDoList);
  }

  void deleteToDoItem(String id) {
    final newToDoList =
        state.todosList.where((element) => element.id != id).toList();
    state = state.copyWith(todosList: newToDoList);
  }

  void addToDoItem(String toDo) {
    final newToDoList = List<ToDo>.from(state.todosList)
      ..add(ToDo(
        id: const Uuid().v4(),
        todoText: toDo,
        isDone: false,
      ));
    state.todoController.clear();
    state = state.copyWith(
      todosList: newToDoList,
    );
  }
}
