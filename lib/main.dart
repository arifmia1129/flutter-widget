import '/data.dart';
import "package:flutter/material.dart";
import 'package:provider/provider.dart';
import "./page1.dart";

void main() {
  runApp(ChangeNotifierProvider(create: (_) => Data(), child: MyApp()));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
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
  @override
  Widget build(BuildContext context) {
    final providerData = Provider.of<Data>(context);
    return Scaffold(
      appBar: AppBar(
        title: Text("State and Porvider"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              providerData.value.toString(),
              style: TextStyle(fontSize: 50),
            ),
            TextButton(
                onPressed: () {
                  providerData.increament();
                },
                child: Text("Increament")),
            TextButton(
                onPressed: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => Page1()));
                },
                child: Text("Navigate to another page"))
          ],
        ),
      ),
    );
  }
}
