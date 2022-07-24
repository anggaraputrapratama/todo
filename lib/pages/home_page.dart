import 'package:flutter/material.dart';

import '../widgets/todo_display.dart';
import '../widgets/top_header.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
          child: SizedBox(
        height: MediaQuery.of(context).size.height,
        child: ListView(
          children: const [
            TopHeader(),
            TodoList(),
          ],
        ),
      )),
    );
  }
}
