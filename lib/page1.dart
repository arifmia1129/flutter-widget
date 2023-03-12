import "package:flutter/material.dart";

class Page1 extends StatelessWidget {
  const Page1({super.key});

  @override
  Widget build(BuildContext context) {
    return Hero(
      tag: "add",
      child: Icon(
        Icons.add_a_photo,
        size: 200,
      ),
    );
  }
}
