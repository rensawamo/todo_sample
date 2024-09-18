import 'package:freezed_annotation/freezed_annotation.dart';

part 'todo.freezed.dart';

@freezed
class ToDo with _$ToDo {
  const factory ToDo({
    required String id,
    required String todoText,
    @Default(false) bool isDone,
  }) = _ToDo;

}
