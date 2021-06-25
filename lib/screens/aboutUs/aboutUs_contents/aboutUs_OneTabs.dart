import 'package:flutter/material.dart';

class Hakkimizda extends StatefulWidget {
  const Hakkimizda({Key? key}) : super(key: key);

  @override
  _HakkimizdaState createState() => _HakkimizdaState();
}

class _HakkimizdaState extends State<Hakkimizda> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
            alignment: Alignment.center,
            width: 400,
            height: 50,
            color: Colors.teal[900],
            child: Text(
              "Hakkımda",
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
                color: Colors.white,
              ),
            ),
          ),
          Container(
            alignment: Alignment.center,
            width: 400,
            height: 150,
            color: Colors.teal[700],
            child: Padding(
              padding: const EdgeInsets.only(left: 20.0),
              child: Text(
                "Bu uygulama Dr. Öğretim Üyesi Ahmet Cevahir ÇINAR tarafından yürütülen 3006881 kodlu MOBİL PROGRAMLAMA dersi kapsamında 173006047 numaralı Barış ÇAPAR tarafından 25 Haziran 2021 günü yapılmıştır.",
                style: TextStyle(
                  color: Colors.white,
                ),
              ),
            ),
          ),
          Container(
            alignment: Alignment.center,
            width: 400,
            height: 100,
            color: Colors.teal[500],
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(
                "Böyle Bir Ders İçin Sizden Teşekkür Ederim. İnşallah Emeğimi Beğenirsiniz...",
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 14,
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
