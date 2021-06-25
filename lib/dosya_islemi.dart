import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'file_utils.dart';

class dosya_islemi extends StatefulWidget {
  dosya_islemi() : super();
  final String title = "File Operations";
  @override
  _dosya_islemiState createState() => _dosya_islemiState();
}

class _dosya_islemiState extends State<dosya_islemi> {
  String fileContents = "Veri Yok";
  final myController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Dosya İşlemim"),
        centerTitle: true,
        backgroundColor: Colors.green,
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: <Widget>[
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: TextField(
              controller: myController,
            ),
          ),
          ElevatedButton(
            child: Text("Kaydet"),
            onPressed: () {
              FileUtils.saveToFile(myController.text);
            },
          ),
          ElevatedButton(
            child: Text("Oku"),
            onPressed: () {
              FileUtils.readFromFile().then((contents) {
                setState(() {
                  fileContents = contents;
                });
              });
            },
          ),
          SizedBox(height: 100),
          Text(
            fileContents,
            style: TextStyle(color: Colors.black, fontSize: 20),
          ),
        ],
      ),
    );
  }
}
