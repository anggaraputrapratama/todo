import 'package:flutter/material.dart';

import '../models/todo.dart';
import '../services/todo_repository.dart';
import '../widgets/todo_notyet_display.dart';
import '../widgets/top_header.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  late Future<List<ToDo>> _getTodosUpdate;

  @override
  void initState() {
    _getTodosUpdate = TodoRepository.getTodosNotYet();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Center(child: Text('To Do')),
      ),
      backgroundColor: Colors.white,
      body: SafeArea(
          child: SizedBox(
              height: MediaQuery.of(context).size.height,
              child: RefreshIndicator(
                  child: ListView(
                    children: const [
                      TopHeader(),
                      TodoListNotYet(),
                    ],
                  ),
                  onRefresh: () {
                    return _getTodosUpdate;
                  }))),
    );
  }
}
