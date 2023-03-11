import "package:flutter/material.dart";

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        home: Scaffold(
          body: SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
              children: [
                Container(
                  height: 200,
                  width: 200,
                  color: Colors.amber,
                ),
                SizedBox(
                  width: 10,
                ),
                Container(
                  height: 200,
                  width: 200,
                  color: Colors.amber,
                ),
                SizedBox(
                  width: 10,
                ),
                Container(
                  height: 200,
                  width: 200,
                  color: Colors.amber,
                ),
                SizedBox(
                  width: 10,
                ),
              ],
            ),
          ),
        ));
  }
}
