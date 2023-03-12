import "./page1.dart";
import "./page2.dart";
import "./page3.dart";
import "package:flutter/material.dart";

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  PageController _controller = PageController(initialPage: 0);
  @override
  void dispose() {
    _controller.dispose();
    // TODO: implement dispose
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: PageView(
          controller: _controller,
          children: [
            Page1(),
            Page2(),
            Page3(),
          ],
        ),
      ),
    );
  }
}
