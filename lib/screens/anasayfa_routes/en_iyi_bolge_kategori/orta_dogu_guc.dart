import 'package:flutter/material.dart';

class ortadoguGuc extends StatefulWidget {
  const ortadoguGuc({Key? key}) : super(key: key);

  @override
  _ortadoguGucState createState() => _ortadoguGucState();
}

class _ortadoguGucState extends State<ortadoguGuc> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Orta Doğu Askeri Güç"),
        centerTitle: true,
      ),
    );
  }
}
