import "package:flutter/material.dart";
import 'package:kureselproje_app/screens/settings/settings_contents/setting_OneTabs.dart';
import 'package:kureselproje_app/sqfLite/models/Dog.dart';
import 'package:kureselproje_app/sqfLite/services/db_utils.dart';

DbUtils utils = DbUtils();

class ListDogs extends StatefulWidget {
  @override
  _ListDogsState createState() => _ListDogsState();
}

class _ListDogsState extends State<ListDogs> {
  List<Dog> dogList = [];

  void getData() async {
    await utils.dogs().then((result) => {
          setState(() {
            dogList = result;
          })
        });
    print(dogList);
  }

  void showAlert(String alertTitle, String alertContent) {
    AlertDialog alertDialog;
    alertDialog =
        AlertDialog(title: Text(alertTitle), content: Text(alertContent));
    showDialog(context: context, builder: (_) => alertDialog);
  }

  @override
  void initState() {
    getData();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          title: Text(dogList.length.toString() + " Adet Eklenen Ülke Verisi")),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: ListView.builder(
                shrinkWrap: true,
                itemCount: dogList.length,
                itemBuilder: (context, index) {
                  return ListTile(
                    title: Row(
                      children: [
                        Text(
                          "Ülke Adı: ",
                          style: TextStyle(fontWeight: FontWeight.bold),
                        ),
                        Text(dogList[index].name),
                      ],
                    ),
                    subtitle: Row(
                      children: [
                        Text(
                          "Güç İndeksi: ",
                          style: TextStyle(fontWeight: FontWeight.bold),
                        ),
                        Text(dogList[index].age.toString()),
                      ],
                    ),
                    onTap: () {
                      showAlert(
                        dogList[index].name,
                        "Ülke " + dogList[index].name + " Tıklandı",
                      );
                    },
                    onLongPress: () async {
                      await utils.deleteDog(dogList[index].id).then((value) => {
                            showAlert(dogList[index].name,
                                "Listeden " + dogList[index].name + " Silindi")
                          });
                      getData();
                    },
                  );
                },
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: ElevatedButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => Home()),
                    );
                  },
                  child: Text("Sayfaya Geri Dön")),
            ),
          ],
        ),
      ),
    );
  }
}
