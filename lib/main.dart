import "package:flutter/material.dart";

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        home: Scaffold(
          body: ListView(
            children: [
              Column(
                children: [
                  Container(
                    height: 400,
                    width: 400,
                    color: Colors.amber,
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Container(
                    height: 400,
                    width: 400,
                    color: Colors.amber,
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Container(
                    height: 400,
                    width: 400,
                    color: Colors.amber,
                  ),
                  SizedBox(
                    height: 10,
                  ),
                ],
              ),
            ],
          ),
        ));
  }
}
