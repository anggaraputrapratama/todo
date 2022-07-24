import 'dart:math';

import 'package:flutter/material.dart';

import '../models/todo.dart';

class TodoCard extends StatelessWidget {
  final ToDo todo;
  final _random = Random();
  TodoCard({Key? key, required this.todo}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      child: SizedBox(
        child: Container(
          margin: const EdgeInsets.only(bottom: 15),
          padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 10),
          width: double.infinity,
          height: 100,
          decoration: BoxDecoration(
              color: Colors.primaries[Random().nextInt(Colors.primaries.length)]
                  .withOpacity(0.7),
              boxShadow: [
                BoxShadow(
                  color: Colors.black.withOpacity(0.2),
                  blurRadius: 10,
                  spreadRadius: 2,
                  offset: const Offset(0, 3),
                ),
              ],
              borderRadius: const BorderRadius.all(Radius.circular(12))),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Text(
                todo.todoText,
                style: const TextStyle(
                  fontSize: 20,
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              Text(
                'STATUS: ${todo.status}',
                style: TextStyle(
                    fontSize: 15,
                    color: (todo.status == 'done') && (todo.status == 'Done')
                        ? Colors.green
                        : Colors.red,
                    fontWeight: FontWeight.w600),
              ),
              const SizedBox(
                height: 10,
              ),
              Text(
                todo.belongTo,
                style: const TextStyle(
                  color: Colors.white,
                  fontSize: 15,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
