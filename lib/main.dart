import "./page1.dart";
import "./page2.dart";
import "./page3.dart";
import "./page4.dart";
import "package:flutter/material.dart";

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  var currentIndex = 0;

  final pages = [Page1(), Page2(), Page3(), Page4()];
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
          body: CustomScrollView(
        slivers: [
          SliverAppBar(
            backgroundColor: Colors.red,
            expandedHeight: 200,
            pinned: true,
            flexibleSpace: FlexibleSpaceBar(
              title: Text("Flutter"),
            ),
          ),
          SliverList(
              delegate: SliverChildListDelegate([
            details("One", "This is one"),
            details("One", "This is one"),
            details("One", "This is one"),
            details("One", "This is one"),
            details("One", "This is one"),
            details("One", "This is one"),
            details("One", "This is one"),
            details("One", "This is one"),
            details("One", "This is one"),
            details("One", "This is one"),
            details("One", "This is one"),
            details("One", "This is one"),
            details("One", "This is one"),
            details("One", "This is one"),
            details("One", "This is one"),
            details("One", "This is one"),
            details("One", "This is one"),
            details("One", "This is one"),
            details("One", "This is one"),
            details("One", "This is one"),
            details("One", "This is one"),
            details("One", "This is one"),
            details("One", "This is one"),
          ]))
        ],
      )),
    );
  }
}

Widget details(String name, String description) {
  return ListTile(
    title: Text(name),
    subtitle: Text(description),
    leading: CircleAvatar(
      child: Text(name[0]),
    ),
  );
}
