import 'package:flutter/material.dart';
import 'package:todo/pages/done_page.dart';
import 'package:todo/widgets/todo_notyet_display.dart';

class NavDrawer extends StatelessWidget {
  const NavDrawer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        padding: EdgeInsets.zero,
        children: <Widget>[
          const DrawerHeader(
            decoration: BoxDecoration(
              color: Colors.green,
            ),
            child: Text(
              'Menu',
              style: TextStyle(color: Colors.white, fontSize: 25),
            ),
          ),
          ListTile(
            title: const Text('To Do Not Yet'),
            onTap: () => {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => const DonePage()))
            },
          ),
          ListTile(
            title: const Text('To Do Done'),
            onTap: () => {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => const TodoListNotYet()))
            },
          ),
        ],
      ),
    );
  }
}
