import "package:flutter/material.dart";

class Details extends StatelessWidget {
  var receiveData;
  Details({this.receiveData});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Details page")),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(10.0),
          child: Column(
            children: [
              Image.network(receiveData["flags"]["png"]),
              Text(
                "Country name: ${receiveData["name"]["common"]}",
                style: TextStyle(
                    fontSize: 20,
                    color: Colors.blue,
                    fontWeight: FontWeight.bold),
              ),
              Text(
                "Capital name: ${receiveData["capital"][0]}",
                style: TextStyle(
                    fontSize: 16,
                    color: Colors.blue,
                    fontWeight: FontWeight.bold),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
