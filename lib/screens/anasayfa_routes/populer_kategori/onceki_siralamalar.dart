import 'package:flutter/material.dart';

class onceki_siralamalar extends StatefulWidget {
  const onceki_siralamalar({Key? key}) : super(key: key);

  @override
  _onceki_siralamalarState createState() => _onceki_siralamalarState();
}

class _onceki_siralamalarState extends State<onceki_siralamalar> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Önceki Sıralamalar"),
        centerTitle: true,
      ),
    );
  }
}
