import 'package:flutter/material.dart';

class Vizyon extends StatefulWidget {
  const Vizyon({Key? key}) : super(key: key);

  @override
  _VizyonState createState() => _VizyonState();
}

class _VizyonState extends State<Vizyon> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Text(
          "Vizyon Sayfası",
          style: TextStyle(fontSize: 17, fontWeight: FontWeight.bold),
        ),
      ),
    );
  }
}
