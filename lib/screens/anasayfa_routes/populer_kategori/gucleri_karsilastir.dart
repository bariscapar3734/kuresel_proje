import 'package:flutter/material.dart';

class gucleri_karsilastir extends StatefulWidget {
  const gucleri_karsilastir({Key? key}) : super(key: key);

  @override
  _gucleri_karsilastirState createState() => _gucleri_karsilastirState();
}

class _gucleri_karsilastirState extends State<gucleri_karsilastir> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Güçleri Karşılaştır"),
        centerTitle: true,
      ),
    );
  }
}
