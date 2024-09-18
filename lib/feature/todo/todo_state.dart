import 'package:flutter/material.dart';
import 'package:flutter_todo/core/model/todo.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'todo_state.freezed.dart';

@freezed
class ToDoState with _$ToDoState {
  const factory ToDoState({
    required List<ToDo> todosList,
    required TextEditingController todoController,
  }) = _ToDoState;
}
