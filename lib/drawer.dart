import 'package:flutter/material.dart';


class MyDrawer extends StatelessWidget {
  const MyDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        padding: EdgeInsets.zero,
        children: [
          // DrawerHeader(
          //   child: Text("Hello",style: TextStyle(color: Colors.indigo)
          //   ),
          //   decoration: BoxDecoration(color: Colors.amber),
          // ),
          UserAccountsDrawerHeader(
            accountName: Text("Hello"), 
            accountEmail: Text(("abc@email.com")),
            currentAccountPicture: CircleAvatar(
              backgroundImage: NetworkImage("https://images.unsplash.com/photo-1488161628813-04466f872be2?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=928&q=80"),
            ),
            ),
            
          ListTile(
            leading: Icon(Icons.access_alarm_rounded),
            trailing: Icon(Icons.arrow_circle_right_rounded),
            title: Text("Hello no 1"),
            subtitle: Text("personal"),
            onTap: () {},
          )
        ],
      ),
      );
  }
}