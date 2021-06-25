import 'package:flutter/material.dart';

class perisan_korfezi extends StatefulWidget {
  const perisan_korfezi({Key? key}) : super(key: key);

  @override
  _perisan_korfeziState createState() => _perisan_korfeziState();
}

class _perisan_korfeziState extends State<perisan_korfezi> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Perisan Körfezi Askeri Güç"),
        centerTitle: true,
      ),
    );
  }
}
