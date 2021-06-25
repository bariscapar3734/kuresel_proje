import 'package:flutter/material.dart';

class avrupa_birligi extends StatefulWidget {
  const avrupa_birligi({Key? key}) : super(key: key);

  @override
  _avrupa_birligiState createState() => _avrupa_birligiState();
}

class _avrupa_birligiState extends State<avrupa_birligi> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Avrupa Birliği Askeri Güç"),
        centerTitle: true,
      ),
    );
  }
}
