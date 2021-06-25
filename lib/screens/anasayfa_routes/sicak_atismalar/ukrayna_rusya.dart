import 'package:flutter/material.dart';

class ukraynaVSrusya extends StatefulWidget {
  const ukraynaVSrusya({Key? key}) : super(key: key);

  @override
  _ukraynaVSrusyaState createState() => _ukraynaVSrusyaState();
}

class _ukraynaVSrusyaState extends State<ukraynaVSrusya> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Ukrayna vs Rusya"),
        centerTitle: true,
      ),
    );
  }
}
