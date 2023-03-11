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
        body: Stack(
      alignment: Alignment.center,
      children: [
        Container(height: 200, width: 200, color: Colors.green),
        Positioned(
            child: CircleAvatar(
          radius: 50,
          backgroundColor: Colors.red,
        ))
      ],
    ));
  }
}
