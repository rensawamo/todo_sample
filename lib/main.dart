import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_todo/core/utility/provider_logger.dart';
import 'package:flutter_todo/feature/todo/todo_page.dart';

void main() {
  runApp(
    const ProviderScope(
      child: MyApp(),
      observers: [ProviderLogger()],
    ),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'ToDo App',
      home: TodoPage(),
    );
  }
}
