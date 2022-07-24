import 'package:flutter/material.dart';
import 'package:todo/widgets/side_menu.dart';
import 'package:todo/widgets/todo_done_display.dart';

import '../widgets/top_header.dart';

class DonePage extends StatefulWidget {
  const DonePage({Key? key}) : super(key: key);

  @override
  State<DonePage> createState() => _DonePageState();
}

class _DonePageState extends State<DonePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: const NavDrawer(),
      appBar: AppBar(
        title: const Text('To Do'),
      ),
      backgroundColor: Colors.white,
      body: SafeArea(
          child: SizedBox(
        height: MediaQuery.of(context).size.height,
        child: ListView(
          children: const [TopHeader(), TodoListDone()],
        ),
      )),
    );
  }
}
