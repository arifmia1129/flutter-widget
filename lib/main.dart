import "package:flutter/material.dart";

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: HomePage(),
    );
  }
}

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Center(
      child: TextButton(
          onPressed: () {
            showModalBottomSheet(
                context: context,
                builder: (context) {
                  return Container(
                    height: 250,
                    child: Column(
                      children: [
                        ListTile(
                          title: Text("One"),
                          subtitle: Text("This is one"),
                          trailing: Icon(Icons.alarm),
                        ),
                        ListTile(
                          title: Text("One"),
                          subtitle: Text("This is one"),
                          trailing: Icon(Icons.alarm),
                        ),
                        ListTile(
                          title: Text("One"),
                          subtitle: Text("This is one"),
                          trailing: Icon(Icons.alarm),
                        ),
                      ],
                    ),
                  );
                });
          },
          child: Text("Click me")),
    ));
  }
}
