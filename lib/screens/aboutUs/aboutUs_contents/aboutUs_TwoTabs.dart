import 'package:flutter/material.dart';

class Misyon extends StatefulWidget {
  const Misyon({Key? key}) : super(key: key);

  @override
  _MisyonState createState() => _MisyonState();
}

class _MisyonState extends State<Misyon> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Text(
          "Misyon Sayfası",
          style: TextStyle(fontSize: 17, fontWeight: FontWeight.bold),
        ),
      ),
    );
  }
}
