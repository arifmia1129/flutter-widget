import 'dart:convert';

import "package:flutter/material.dart";
import 'package:http/http.dart' as http;
import "./details.dart";

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  var data = [];
  bool loading = false;

  Future getData() async {
    setState(() {
      loading = true;
    });
    var url = Uri.https('restcountries.com', '/v3.1/all', {'q': '{https}'});

    var res = await http.get(url);

    var jsonRes = jsonDecode(res.body);

    setState(() {
      data = jsonRes;
      loading = false;
    });
  }

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    this.getData();
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
          appBar: AppBar(
            title: Text("Countries data from api"),
          ),
          body: loading
              ? Center(
                  child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text("Data loading from server..."),
                        TextButton(
                            onPressed: () {
                              getData();
                            },
                            child: Text("Refresh"))
                      ]),
                )
              : Container(
                  child: ListView.builder(
                      itemCount: data.length,
                      itemBuilder: (context, index) {
                        return Padding(
                          padding: const EdgeInsets.all(2.0),
                          child: Card(
                              child: ListTile(
                            title: Text(data[index]["name"]["common"]),
                            subtitle: Text(data[index]["capital"][0]),
                            trailing:
                                Image.network(data[index]["flags"]["png"]),
                            onTap: () {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) =>
                                          Details(receiveData: data[index])));
                            },
                          )),
                        );
                      }),
                )),
    );
  }
}
