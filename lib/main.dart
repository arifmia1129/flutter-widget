import "package:flutter/material.dart";

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        home: Scaffold(
          body: Center(
              child: Container(
            alignment: Alignment.center,
            height: 200,
            width: 200,
            decoration: BoxDecoration(color: Colors.amber),
            child: Text(
              "Hello Flutter Container",
              style: TextStyle(
                  fontSize: 20,
                  color: Colors.white,
                  fontWeight: FontWeight.bold),
            ),
          )),
        ));
  }
}
