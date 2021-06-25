import 'package:flutter/material.dart';

class turkiyeVSyunanistan extends StatefulWidget {
  const turkiyeVSyunanistan({Key? key}) : super(key: key);

  @override
  _turkiyeVSyunanistanState createState() => _turkiyeVSyunanistanState();
}

class _turkiyeVSyunanistanState extends State<turkiyeVSyunanistan> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Türkiye vs Yunanistan"),
        centerTitle: true,
      ),
    );
  }
}
