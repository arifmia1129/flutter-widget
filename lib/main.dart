import "package:flutter/material.dart";
import 'package:image_picker/image_picker.dart';
import "dart:io";

void main() => runApp(MyApp());

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
  final ImagePicker _picker = ImagePicker();
  var imageSrc;

  Future handleTakePictureFromCamera() async {
    var src = await _picker.pickImage(source: ImageSource.camera);

    setState(() {
      imageSrc = src;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: [
          Container(
            height: 500,
            width: double.infinity,
            color: Colors.blue,
            child: imageSrc == Null
                ? Image.file(imageSrc)
                : Center(child: Text("Image not picked")),
          ),
          Divider(),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              FloatingActionButton(
                onPressed: () {
                  handleTakePictureFromCamera();
                },
                child: Icon(Icons.camera),
              ),
              SizedBox(
                width: 20,
              ),
              FloatingActionButton(
                onPressed: null,
                child: Icon(Icons.photo_album),
              )
            ],
          )
        ],
      ),
    );
  }
}
