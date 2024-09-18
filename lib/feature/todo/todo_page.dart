import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_todo/core/constant/colors.dart';
import 'package:flutter_todo/core/model/todo.dart';
import 'package:flutter_todo/feature/todo/todo_viewmodel.dart';

class TodoPage extends ConsumerWidget {
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final vm = ref.watch(todoViewmodelProvider.notifier);
    final state = ref.watch(todoViewmodelProvider);

    return GestureDetector(
      onTap: () {
        FocusScope.of(context).unfocus();
      },
      child: Scaffold(
        backgroundColor: tdBGColor,
        body: Stack(
          children: [
            Container(
              padding: EdgeInsets.symmetric(
                horizontal: 20,
                vertical: 15,
              ),
              child: Column(
                children: [
                  const SizedBox(height: 50),
                  Expanded(
                    child: ListView(
                      children: [
                        for (ToDo todo in state.todosList.reversed)
                          Container(
                            margin: EdgeInsets.only(bottom: 20),
                            child: ListTile(
                              onTap: () {
                                vm.changeTodo(todo.id);
                              },
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(20),
                              ),
                              contentPadding: EdgeInsets.symmetric(
                                  horizontal: 20, vertical: 5),
                              tileColor: Colors.white,
                              leading: Icon(
                                todo.isDone
                                    ? Icons.check_box
                                    : Icons.check_box_outline_blank,
                                color: tdBlue,
                              ),
                              title: Text(
                                todo.todoText!,
                                style: TextStyle(
                                  fontSize: 16,
                                  color: tdBlack,
                                  decoration: todo.isDone
                                      ? TextDecoration.lineThrough
                                      : null,
                                ),
                              ),
                              trailing: Container(
                                padding: EdgeInsets.all(0),
                                margin: EdgeInsets.symmetric(vertical: 12),
                                height: 35,
                                width: 35,
                                decoration: BoxDecoration(
                                  color: tdRed,
                                  borderRadius: BorderRadius.circular(5),
                                ),
                                child: IconButton(
                                  color: Colors.white,
                                  iconSize: 18,
                                  icon: Icon(Icons.delete),
                                  onPressed: () {
                                    vm.deleteToDoItem(todo.id);
                                  },
                                ),
                              ),
                            ),
                          ),
                      ],
                    ),
                  )
                ],
              ),
            ),
            Align(
              alignment: Alignment.bottomCenter,
              child: Row(children: [
                Expanded(
                  child: Container(
                    margin: const EdgeInsets.only(
                      bottom: 20,
                      right: 20,
                      left: 20,
                    ),
                    padding: const EdgeInsets.symmetric(
                      horizontal: 20,
                      vertical: 5,
                    ),
                    decoration: BoxDecoration(
                      color: Colors.white,
                      boxShadow: const [
                        BoxShadow(
                          color: Colors.grey,
                          offset: Offset(0.0, 0.0),
                          blurRadius: 10.0,
                          spreadRadius: 0.0,
                        ),
                      ],
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: TextField(
                      controller: state.todoController,
                      decoration: const InputDecoration(
                        hintText: 'todo...',
                        border: InputBorder.none,
                      ),
                    ),
                  ),
                ),
                Container(
                  margin: const EdgeInsets.only(
                    bottom: 20,
                    right: 20,
                  ),
                  child: ElevatedButton(
                    child: Text(
                      '+',
                      style: TextStyle(
                        fontSize: 40,
                      ),
                    ),
                    onPressed: () {
                      vm.addToDoItem(state.todoController.text);
                      FocusScope.of(context).unfocus();
                    },
                    style: ElevatedButton.styleFrom(
                      minimumSize: Size(60, 60),
                      elevation: 10,
                    ),
                  ),
                ),
              ]),
            ),
          ],
        ),
      ),
    );
  }
}
