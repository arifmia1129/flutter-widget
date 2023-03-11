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

    return Center(
      child: Container(
        height: height / 3,
        width: width / 2,
        color: Colors.amber,
        child: Text(
          "Media Query",
          style: TextStyle(color: Colors.white),
        ),
        alignment: Alignment.center,
      ),
    );
  }
}
