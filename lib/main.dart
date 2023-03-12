import "./page1.dart";
import "./page2.dart";
import "./page3.dart";
import "package:flutter/material.dart";

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: HomePage(),
      ),
    );
  }
}

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Container(
          child: Center(
            child: CircleAvatar(
              radius: 50,
              child: GestureDetector(
                onTap: () => Navigator.push(
                    context, MaterialPageRoute(builder: (context) => Page1())),
                child: Hero(tag: "add", child: Icon(Icons.add_a_photo)),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
