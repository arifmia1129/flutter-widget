import "package:flutter/material.dart";

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        home: Scaffold(
          body: Row(
            children: [
              Container(
                height: 100,
                width: 100,
                color: Colors.amber,
              ),
              SizedBox(
                width: 10,
              ),
              Container(
                height: 100,
                width: 100,
                color: Colors.amber,
              ),
              SizedBox(
                width: 10,
              ),
              Container(
                height: 100,
                width: 100,
                color: Colors.amber,
              ),
              SizedBox(
                width: 10,
              ),
            ],
          ),
        ));
  }
}
