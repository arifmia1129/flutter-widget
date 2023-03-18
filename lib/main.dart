import "package:flutter/material.dart";
import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import "./page1.dart";
import "./page2.dart";
import "./page3.dart";
import "./page4.dart";

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

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int currentPage = 0;

  final pages = [
    Page1(),
    Page2(),
    Page3(),
    Page4(),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        bottomNavigationBar: CurvedNavigationBar(
            backgroundColor: Colors.blueAccent,
            index: currentPage,
            animationCurve: Curves.bounceIn,
            animationDuration: Duration(milliseconds: 500),
            buttonBackgroundColor: Colors.white,
            onTap: (index) {
              setState(() {
                currentPage = index;
              });
            },
            items: [
              Icon(Icons.alarm),
              Icon(Icons.call),
              Icon(Icons.message),
              Icon(Icons.person),
            ]),
        body: pages[currentPage]);
  }
}
