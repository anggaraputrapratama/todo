import 'package:flutter/material.dart';

class TopBar extends StatelessWidget {
  const TopBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        IconButton(
            onPressed: () {
              // Navigator.push(context, MaterialPageRoute(builder: (context) => const NavDrawer()));
            },
            icon: const Icon(Icons.menu)),
      ],
    );
  }
}
