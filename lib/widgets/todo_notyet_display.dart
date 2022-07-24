import 'package:flutter/material.dart';
import 'package:todo/widgets/todo_card.dart';

import '../models/todo.dart';
import '../services/todo_repository.dart';

class TodoListNotYet extends StatefulWidget {
  const TodoListNotYet({Key? key}) : super(key: key);

  @override
  State<TodoListNotYet> createState() => _TodoListNotYetState();
}

class _TodoListNotYetState extends State<TodoListNotYet> {
  late Future<List<ToDo>> _getTodosNotYet;

  @override
  void initState() {
    _getTodosNotYet = TodoRepository.getTodosNotYet();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return RefreshIndicator(
        child: FutureBuilder<List<ToDo>>(
          future: _getTodosNotYet,
          builder: (context, snapshot) {
            if (snapshot.connectionState == ConnectionState.done &&
                snapshot.data != null) {
              final todos = snapshot.data ?? [];
              return Padding(
                padding:
                    const EdgeInsets.only(left: 15.0, right: 15.0, bottom: 40),
                child: Column(
                  children: todos
                      .map((todo) => GestureDetector(
                          onTap: () {}, child: TodoCard(todo: todo)))
                      .toList(),
                ),
              );
            }
            //Loading state
            return const Center(
              child: CircularProgressIndicator(),
            );
          },
        ),
        onRefresh: () {
          return _getTodosNotYet;
        });
  }
}
