import 'package:flutter/material.dart';

class MyDrawer extends StatelessWidget {
  const MyDrawer({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: <Widget> [
            UserAccountsDrawerHeader(
              decoration: BoxDecoration(color: Colors.purple),
              accountName: Text("Rakshith Raju N"), 
              accountEmail: Text("rakshithraju2000@gmail.com"),
              currentAccountPicture:CircleAvatar(
                backgroundImage:NetworkImage(
                  "https://images.unsplash.com/photo-1480429370139-e0132c086e2a?ixid=MnwxMjA3fDB8MHxzZWFyY2h8MjR8fG1hbnxlbnwwfHwwfHw%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=600&q=60"),
                 ) ,
                 ),
              ListTile(
                leading: Icon(Icons.person),
                title: Text("Account"),
                subtitle: Text("Personal"),
                trailing: Icon(Icons.edit),
              ),
              ListTile(
                leading: Icon(Icons.email),
                title: Text("Email"),
                subtitle: Text("rakshithraju2000@gmail.com"),
                trailing: Icon(Icons.send),
              )
          ],
        ),
      );
  }
}