import "package:first_app/data.dart";
import "package:flutter/material.dart";
import "package:provider/provider.dart";

class Page1 extends StatelessWidget {
  const Page1({super.key});

  @override
  Widget build(BuildContext context) {
    final prodiverData = Provider.of<Data>(context);
    return Scaffold(
      body: Center(child: Text(prodiverData.value.toString())),
    );
  }
}
