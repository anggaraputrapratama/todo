import 'package:flutter/material.dart';
import 'package:todo/widgets/side_menu.dart';

class AddPage extends StatefulWidget {
  const AddPage({Key? key}) : super(key: key);

  @override
  State<AddPage> createState() => _AddPageState();
}

class _AddPageState extends State<AddPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        drawer: const NavDrawer(),
        appBar: AppBar(
          title: const Text('To Do'),
        ),
        backgroundColor: Colors.white,
        body: const AddPage());
  }
}
