import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:kureselproje_app/api/models/api_model.dart';
import 'package:kureselproje_app/api/services/api_services.dart';
import 'package:kureselproje_app/screens/countries/ulkeler/almanya/almanya.dart';

class OrtaDogu extends StatefulWidget {
  @override
  _OrtaDoguState createState() => _OrtaDoguState();
}

class _OrtaDoguState extends State<OrtaDogu> {
  late Future<List<Gucsirasi>> futureData;
  @override
  void initState() {
    super.initState();
    futureData = fetchData();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: Text('Orta Doğu Askeri Güçleri'),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.only(top: 10.0),
          child: Center(
            child: FutureBuilder<List<Gucsirasi>>(
              future: futureData,
              builder: (context, snapshot) {
                if (snapshot.hasData) {
                  List<Gucsirasi>? data = snapshot.data;
                  return ListView.separated(
                    shrinkWrap: true,
                    itemCount: data!.length,
                    scrollDirection: Axis.vertical,
                    itemBuilder: (BuildContext context, int index) {
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
                                  onTap: () => ScaffoldMessenger.of(context)
                                      .showSnackBar(
                                    SnackBar(
                                      backgroundColor: Colors.black54,
                                      content: Text(
                                        data[index].ulkead +
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
                                            backgroundColor: Colors.black54,
                                            content: new Text(
                                              'Hay Aksi Tamda ' +
                                                  data[index].ulkead +
                                                  ' Sayfasına Gidiyordun',
                                              style: TextStyle(
                                                  color: Colors.white,
                                                  fontSize: 15,
                                                  fontWeight: FontWeight.bold),
                                            )));
                                  },
                                  child: Image.network(data[index].images),
                                ),
                                onDoubleTapCancel: () {
                                  ScaffoldMessenger.of(context).showSnackBar(
                                    new SnackBar(
                                      backgroundColor: Colors.black54,
                                      content: new Text(
                                        'Haydi Bidaha Dene',
                                        style: TextStyle(
                                            color: Colors.white,
                                            fontSize: 15,
                                            fontWeight: FontWeight.bold),
                                      ),
                                    ),
                                  );
                                },
                                onTapCancel: () {
                                  ScaffoldMessenger.of(context).showSnackBar(
                                    new SnackBar(
                                      backgroundColor: Colors.black54,
                                      content: new Text(
                                        'Ekrana Kim Dokundu :))',
                                        style: TextStyle(
                                            color: Colors.white,
                                            fontSize: 15,
                                            fontWeight: FontWeight.bold),
                                      ),
                                    ),
                                  );
                                },
                                onLongPress: () {
                                  ScaffoldMessenger.of(context).showSnackBar(
                                    new SnackBar(
                                      backgroundColor: Colors.black54,
                                      content: new Text(
                                        'Parmağın Takılı Haldi Heralde Dostum',
                                        style: TextStyle(
                                            color: Colors.white,
                                            fontSize: 15,
                                            fontWeight: FontWeight.bold),
                                      ),
                                    ),
                                  );
                                },
                              ),
                              ListTile(
                                leading: Icon(
                                  Icons.people,
                                  size: 35,
                                  color: Colors.red,
                                ),
                                title: Text(
                                  data[index].ulkead,
                                  style: TextStyle(fontWeight: FontWeight.bold),
                                ),
                                subtitle: Text(
                                  "Güç İndeksi : " + data[index].guc.toString(),
                                ),
                                trailing: CircleAvatar(
                                  backgroundColor: Colors.teal,
                                  child: Text(
                                    data[index].sira.toString(),
                                    style: TextStyle(color: Colors.white),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      );
                    },
                    separatorBuilder: (BuildContext context, int index) =>
                        const Divider(color: Colors.black),
                  );
                } else if (snapshot.hasError) {
                  return Text("${snapshot.error}");
                }
// By default show a loading spinner.
                return CircularProgressIndicator();
              },
            ),
          ),
        ),
      ),
    );
  }
}
