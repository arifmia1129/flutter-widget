import "package:flutter/material.dart";
import 'package:liquid_swipe/liquid_swipe.dart';

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

    final pages = [
      Container(color: Colors.green),
      Container(color: Colors.red),
      Container(color: Colors.yellow),
      Container(color: Colors.blue),
    ];

    return Scaffold(
        appBar: AppBar(title: Text("Flutter")),
        body: LiquidSwipe(pages: pages));
  }
}
