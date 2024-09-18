import 'package:flutter_test/flutter_test.dart';
import 'package:flutter_todo/feature/todo/todo_viewmodel.dart';
import 'package:riverpod/riverpod.dart';

void main() {
  group('TodoViewmodel Tests ', () {
    late ProviderContainer container;
    late TodoViewmodel vm;

    setUp(() {
      container = ProviderContainer();
      vm = container.read(todoViewmodelProvider.notifier);
    });

    tearDown(() {
      container.dispose();
    });

    test('addToDoItemでリストに1つ追加されていること', () {
      // Arrange
      const todoText = 'Test ToDo';

      // Act
      vm.addToDoItem(todoText);

      // Assert
      final todos = container.read(todoViewmodelProvider).todosList;
      expect(todos.length, 1);
      expect(todos.first.todoText, todoText);
      expect(todos.first.isDone, false);
    });

    test('deleteToDoItemで追加されたToDoが削除されること', () {
      // Arrange
      const todoText = 'Test ToDo';
      vm.addToDoItem(todoText);
      final addedToDo = container.read(todoViewmodelProvider).todosList.first;

      // Act
      vm.deleteToDoItem(addedToDo.id);

      // Assert
      final todos = container.read(todoViewmodelProvider).todosList;
      expect(todos.isEmpty, true);
    });

    test('changeTodoで完了状態に変わること', () {
      // Arrange
      const todoText = 'Test ToDo';
      vm.addToDoItem(todoText);
      final addedToDo = container.read(todoViewmodelProvider).todosList.first;

      // Act
      vm.changeTodo(addedToDo.id);

      // Assert
      final updatedToDo = container.read(todoViewmodelProvider).todosList.first;
      expect(updatedToDo.isDone, true);
    });
  });
}
