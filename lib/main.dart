import "package:flutter/material.dart";

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(debugShowCheckedModeBanner: false, home: HomePage());
  }
}

class HomePage extends StatelessWidget {
  HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    var height = MediaQuery.of(context).size.height;
    var width = MediaQuery.of(context).size.width;

    return Scaffold(
      body: ListView(
        children: [
          ListTile(
            title: Text("Md Arif"),
            subtitle: Text("Web Developer (MERN)"),
            leading: CircleAvatar(child: Icon(Icons.message)),
            trailing: Icon(Icons.person),
          ),
          ListTile(
            title: Text("Md Arif"),
            subtitle: Text("Web Developer (MERN)"),
            leading: CircleAvatar(child: Icon(Icons.message)),
            trailing: Icon(Icons.person),
          ),
          ListTile(
            title: Text("Md Arif"),
            subtitle: Text("Web Developer (MERN)"),
            leading: CircleAvatar(child: Icon(Icons.message)),
            trailing: Icon(Icons.person),
          ),
          ListTile(
            title: Text("Md Arif"),
            subtitle: Text("Web Developer (MERN)"),
            leading: CircleAvatar(child: Icon(Icons.message)),
            trailing: Icon(Icons.person),
          ),
        ],
      ),
    );
  }
}
