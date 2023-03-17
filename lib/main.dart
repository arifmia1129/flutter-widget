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
      home: DefaultTabController(
          length: 2,
          child: Scaffold(
            appBar: AppBar(
              bottom: TabBar(tabs: [
                Tab(
                  icon: Icon(Icons.camera),
                ),
                Tab(
                  icon: Icon(Icons.message),
                ),
              ]),
            ),
            body: TabBarView(children: [Page1(), Page2()]),
          )),
    );
  }
}
