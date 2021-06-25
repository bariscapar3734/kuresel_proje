import 'package:flutter/material.dart';

class gfp_endeksi extends StatefulWidget {
  const gfp_endeksi({Key? key}) : super(key: key);

  @override
  _gfp_endeksiState createState() => _gfp_endeksiState();
}

class _gfp_endeksiState extends State<gfp_endeksi> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("2021- GFP Endeksi"),
        centerTitle: true,
      ),
    );
  }
}
