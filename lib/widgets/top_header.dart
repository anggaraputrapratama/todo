import 'package:flutter/material.dart';

class TopHeader extends StatelessWidget {
  const TopHeader({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(15),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: const [
          Text(
            'Tasks',
            style: TextStyle(color: Colors.black, fontSize: 30),
          )
        ],
      ),
    );
  }
}
