import "package:flutter/material.dart";
import 'package:kureselproje_app/screens/countries/ulkeler/almanya/almanya.dart';
import 'package:kureselproje_app/sqfLite/models/Dog.dart';
import 'package:kureselproje_app/sqfLite/services/db_utils.dart';
import 'package:kureselproje_app/sqfLite/views/list_dogs.dart';

import 'package:sqflite/sqflite.dart';

DbUtils utils = DbUtils();

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  TextEditingController kopekIdController = TextEditingController();
  TextEditingController kopekAdController = TextEditingController();
  TextEditingController kopekYasController = TextEditingController();

  late Future<Database> database;

  List<Dog> dogList = [];

  _onPressedUpdate() async {
    final enik = Dog(
      id: int.parse(kopekIdController.text),
      name: kopekAdController.text,
      age: int.parse(kopekYasController.text),
    );
    utils.updateDog(enik);
    dogList = await utils.dogs();
    //print(dogList);
    getData();
  }

  _onPressedAdd() async {
    final enik = Dog(
      id: int.parse(kopekIdController.text),
      name: kopekAdController.text,
      age: int.parse(kopekYasController.text),
    );
    utils.insertDog(enik);
    dogList = await utils.dogs();
    //print(dogList);
    getData();
  }

  _deleteDogTable() {
    utils.deleteTable();
    dogList = [];
    getData();
  }

  void getData() async {
    await utils.dogs().then((result) => {
          setState(() {
            dogList = result;
          })
        });
    print(dogList);
  }

  @override
  void initState() {
    getData();
    super.initState();
  }

  @override
  void didChangeAppLifecycleState(AppLifecycleState state) {
    getData();
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: Padding(
          padding: const EdgeInsets.only(top: 10.0),
          child: SingleChildScrollView(
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: TextFormField(
                    controller: kopekIdController,
                    decoration: InputDecoration(
                        border: UnderlineInputBorder(), labelText: 'ID :'),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: TextFormField(
                    controller: kopekAdController,
                    decoration: InputDecoration(
                        border: UnderlineInputBorder(),
                        labelText: 'Ülke İsmi :'),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: TextFormField(
                    controller: kopekYasController,
                    decoration: InputDecoration(
                        border: UnderlineInputBorder(),
                        labelText: 'Ülke Güç İndeksi :'),
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: ElevatedButton(
                          onPressed: _onPressedAdd, child: Text("Ülke Ekle")),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: ElevatedButton(
                          onPressed: _onPressedUpdate,
                          child: Text("Ülkeyi Güncelle")),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: ElevatedButton(
                          onPressed: _deleteDogTable,
                          child: Text("Ülkeyi Sil")),
                    ),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: ElevatedButton(
                          onPressed: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => ListDogs()),
                            );
                          },
                          child: Text("Ülkeleri Listele")),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: ElevatedButton(
                          onPressed: () {
                            getData();
                          },
                          child: Text("Ülkeleri Yenile")),
                    ),
                  ],
                ),
                SizedBox(
                  height: 10,
                ),
                Text(
                  "Eklenen Ülkeler Toplamı:  " + dogList.length.toString(),
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 18,
                  ),
                ),
                SingleChildScrollView(
                  child: Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: ListView.builder(
                          shrinkWrap: true,
                          itemCount: dogList.length,
                          itemBuilder: (context, index) {
                            return Card(
                              elevation: 4.0,
                              child: Center(
                                child: Column(
                                  children: [
                                    GestureDetector(
                                      child: InkWell(
                                        onDoubleTap: () => Navigator.push(
                                          context,
                                          MaterialPageRoute(
                                              builder: (context) => almanya()),
                                        ),
                                        onTap: () =>
                                            ScaffoldMessenger.of(context)
                                                .showSnackBar(
                                          SnackBar(
                                            backgroundColor: Colors.black54,
                                            content: Text(
                                              dogList[index].name +
                                                  " Sayfasına Gitmek için Çift Tıklayın",
                                              style: TextStyle(
                                                  color: Colors.white,
                                                  fontSize: 15,
                                                  fontWeight: FontWeight.bold),
                                            ),
                                          ),
                                        ),
                                        onTapCancel: () {
                                          ScaffoldMessenger.of(context)
                                              .showSnackBar(new SnackBar(
                                                  backgroundColor:
                                                      Colors.black54,
                                                  content: new Text(
                                                    'Hay Aksi Tamda ' +
                                                        dogList[index].name +
                                                        ' Sayfasına Gidiyordun',
                                                    style: TextStyle(
                                                        color: Colors.white,
                                                        fontSize: 15,
                                                        fontWeight:
                                                            FontWeight.bold),
                                                  )));
                                        },
                                        child: Image.asset(
                                            "assets/images/flags/bayraklar.jpg"),
                                      ),
                                    ),
                                    ListTile(
                                      leading: Icon(
                                        Icons.people,
                                        size: 35,
                                        color: Colors.red,
                                      ),
                                      title: Text(
                                        dogList[index].name,
                                        style: TextStyle(
                                            fontWeight: FontWeight.bold),
                                      ),
                                      subtitle: Text(
                                        "Güç İndeksi : " +
                                            dogList[index].age.toString(),
                                      ),
                                      trailing: CircleAvatar(
                                        backgroundColor: Colors.teal,
                                        child: Text(
                                          dogList[index].id.toString(),
                                          style: TextStyle(color: Colors.white),
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            );
                          },
                        ),
                      ),
                    ],
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
