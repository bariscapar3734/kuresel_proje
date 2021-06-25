import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:kureselproje_app/models/home_two_data/index_0.dart';
import 'package:kureselproje_app/models/home_two_data/index_1.dart';
import 'package:kureselproje_app/screens/countries/ulkeler/almanya/almanya.dart';

class TwoTabs extends StatefulWidget {
  int colorVal;
  TwoTabs(this.colorVal);

  _TwoTabsState createState() => _TwoTabsState();
}

class _TwoTabsState extends State<TwoTabs> with SingleTickerProviderStateMixin {
  late TabController _tabController;
  var SeciliDeger;
  var listItem = ["ITem1", "Item200"];
  final Future<FirebaseApp> _initialization = Firebase.initializeApp();
  final _firestore = FirebaseFirestore.instance;

  @override
  void initState() {
    super.initState();
    _tabController = new TabController(vsync: this, length: 9);
    _tabController.addListener(_handleTabSelection);
  }

  void _handleTabSelection() {
    setState(() {
      widget.colorVal = 0xFF810000;
    });
  }

  @override
  Widget build(BuildContext context) {
    CollectionReference siralama = _firestore.collection("2021_siralamasi");

    Size size = MediaQuery.of(context).size;
    return Material(
      color: Color(0xffffffff),
      elevation: 14.0,
      shadowColor: Color(0x802196F3),
      child: Padding(
        padding: EdgeInsets.only(top: 10.0, left: 8.0, right: 8.0),
        child: DefaultTabController(
          length: 9,
          child: Scaffold(
            backgroundColor: Color(0xfffffff),
            appBar: PreferredSize(
              preferredSize: Size.fromHeight(kToolbarHeight),
              child: Container(
                child: SafeArea(
                  child: Column(
                    children: <Widget>[
                      TabBar(
                        isScrollable: true,
                        controller: _tabController,
                        labelPadding: EdgeInsets.all(10.0),
                        indicatorColor: Color(widget.colorVal),
                        indicatorWeight: 5.0,
                        tabs: [
                          Text("2021 Sıralaması",
                              style: TextStyle(
                                  color: _tabController.index == 0
                                      ? Color(widget.colorVal)
                                      : Colors.black)),
                          Text("Uluslar Endeksi",
                              style: TextStyle(
                                  color: _tabController.index == 1
                                      ? Color(widget.colorVal)
                                      : Colors.black)),
                          Text("Güçleri Karşılaştır",
                              style: TextStyle(
                                  color: _tabController.index == 2
                                      ? Color(widget.colorVal)
                                      : Colors.black)),
                          Text("Yükselen Güçler",
                              style: TextStyle(
                                  color: _tabController.index == 3
                                      ? Color(widget.colorVal)
                                      : Colors.black)),
                          Text("Koalisyon Oluşturucu",
                              style: TextStyle(
                                  color: _tabController.index == 4
                                      ? Color(widget.colorVal)
                                      : Colors.black)),
                          Text("Geçmiş Sıralamalar",
                              style: TextStyle(
                                  color: _tabController.index == 5
                                      ? Color(widget.colorVal)
                                      : Colors.black)),
                          Text("Afrika Birliği (AU)",
                              style: TextStyle(
                                  color: _tabController.index == 6
                                      ? Color(widget.colorVal)
                                      : Colors.black)),
                          Text("Avrupa Birliği (AB)",
                              style: TextStyle(
                                  color: _tabController.index == 7
                                      ? Color(widget.colorVal)
                                      : Colors.black)),
                          Text("NATO Üyeleri",
                              style: TextStyle(
                                  color: _tabController.index == 8
                                      ? Color(widget.colorVal)
                                      : Colors.black)),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
            ),
            body: TabBarView(
              controller: _tabController,
              children: <Widget>[
                BirinciSira(siralama: siralama),
                ListView.builder(
                  scrollDirection: Axis.vertical,
                  physics: ScrollPhysics(),
                  shrinkWrap: true,
                  itemCount: 1,
                  itemBuilder: (context, index) {
                    return Container(
                      alignment: Alignment.centerLeft,
                      width: size.width * 1.0,
                      height: size.width * 2.0,
                      child: Column(
                        children: [
                          HarfWidget(harf: "A"),
                          SizedBox(height: 20),
                          UlkeWidget(size: size),
                          HarfWidget(harf: "B"),
                          SizedBox(height: 20),
                          UlkeWidget2(size: size),
                        ],
                      ),
                    );
                  },
                ),
                Container(
                  height: 200.0,
                  child: Center(child: Text('GÜÇLERİ KARŞILAŞTIR')),
                ),
                Container(
                  height: 200.0,
                  child: Center(child: Text('YÜKSELEN GÜÇLER')),
                ),
                Container(
                  height: 200.0,
                  child: Center(child: Text('KOALİSYON OLUŞTURUCU')),
                ),
                Container(
                  height: 200.0,
                  child: Center(child: Text('GEÇMİŞ SIRALAMALAR')),
                ),
                Container(
                  height: 200.0,
                  child: Center(child: Text('AFRİKA BİRLİĞİ (AU)')),
                ),
                Container(
                  height: 200.0,
                  child: Center(child: Text('AVRUPA BİRLİĞİ (AU)')),
                ),
                Container(
                  height: 200.0,
                  child: Center(child: Text('NATO ÜYELERİ')),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class BirinciSira extends StatelessWidget {
  const BirinciSira({
    Key? key,
    required this.siralama,
  }) : super(key: key);

  final CollectionReference<Object?> siralama;

  @override
  Widget build(BuildContext context) {
    return StreamBuilder<QuerySnapshot>(
      stream: siralama.snapshots(),
      builder: (BuildContext context, AsyncSnapshot asyncSnapshot) {
        if (asyncSnapshot.hasError) {
          return Center(
            child: Text("Bir Hata Oluştu"),
          );
        } else {
          if (asyncSnapshot.hasData) {
            List<DocumentSnapshot> listofDocumentSnap = asyncSnapshot.data.docs;
            return Container(
              padding: EdgeInsets.only(),
              height: 1740,
              child: Column(
                children: [
                  Flexible(
                    child: ListView.builder(
                      scrollDirection: Axis.vertical,
                      shrinkWrap: true,
                      physics: ScrollPhysics(),
                      itemCount: listofDocumentSnap.length,
                      itemBuilder: (context, index) {
                        Size size = MediaQuery.of(context).size;
                        return Card(
                          child: Column(
                            children: [
                              Container(
                                height: 50,
                                width: size.width * 1.0,
                                child: Row(
                                  children: [
                                    Flexible(
                                      child: Container(
                                        alignment: Alignment.center,
                                        color: Colors.black,
                                        width: size.width * 0.15,
                                        child: Text(
                                          (index + 1).toString(),
                                          style: TextStyle(
                                              color: Colors.white,
                                              fontWeight: FontWeight.bold),
                                        ),
                                      ),
                                    ),
                                    Container(
                                      padding: EdgeInsets.only(left: 5),
                                      alignment: Alignment.centerLeft,
                                      width: size.width * 0.70,
                                      color: Colors.black87,
                                      child: Text(
                                        "${(listofDocumentSnap[index].data() as Map)['ulkead']}",
                                        style: TextStyle(
                                          color: Colors.white,
                                          fontWeight: FontWeight.bold,
                                          fontSize: 17,
                                        ),
                                      ),
                                    ),
                                    Container(
                                      alignment: Alignment.center,
                                      width: size.width * 0.15,
                                      color: Colors.black87,
                                      child: Icon(
                                        index0[index].icon,
                                        size: 30,
                                        color: index0[index].color,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              ListTile(
                                title: Text(
                                  "Güç İndeksi: " +
                                      "${(listofDocumentSnap[index].data() as Map)['guc_indeksi']}",
                                  style: TextStyle(
                                    color: Colors.black,
                                    fontWeight: FontWeight.bold,
                                    fontSize: 17,
                                  ),
                                ),
                                leading: Container(
                                  decoration: BoxDecoration(
                                    boxShadow: [
                                      BoxShadow(
                                        color: Colors.grey.withOpacity(0.5),
                                        spreadRadius: 5,
                                        blurRadius: 7,
                                        offset: Offset(
                                            0, 3), // changes position of shadow
                                      ),
                                    ],
                                  ),
                                  child: Image.network(
                                    "${(listofDocumentSnap[index].data() as Map)['images']}",
                                    fit: BoxFit.cover,
                                    width: 60,
                                  ),
                                ),
                                onTap: () => Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) =>
                                            index0[index].yolu)),
                              ),
                            ],
                          ),
                        );
                      },
                    ),
                  ),
                ],
              ),
            );
          } else {
            return Center(
              child: CircularProgressIndicator(
                color: Colors.redAccent[700],
              ),
            );
          }
        }
      },
    );
  }
}

Widget IkinciSira(context) {
  Size size = MediaQuery.of(context).size;
  return ListView.builder(
    scrollDirection: Axis.vertical,
    physics: ScrollPhysics(),
    shrinkWrap: true,
    itemCount: 1,
    itemBuilder: (context, index) {
      return Container(
        alignment: Alignment.centerLeft,
        width: size.width * 1.0,
        height: size.width * 2.0,
        child: Column(
          children: [
            HarfWidget(harf: "A"),
            SizedBox(height: 20),
            UlkeWidget(size: size),
            HarfWidget(harf: "B"),
            SizedBox(height: 20),
            UlkeWidget2(size: size),
          ],
        ),
      );
    },
  );
}

class UlkeWidget2 extends StatelessWidget {
  const UlkeWidget2({
    Key? key,
    required this.size,
  }) : super(key: key);

  final Size size;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: size.width * 1.0,
      height: 150,
      alignment: Alignment.center,
      child: ListView.builder(
        shrinkWrap: true,
        itemCount: index1B.length,
        physics: ScrollPhysics(),
        scrollDirection: Axis.horizontal,
        itemBuilder: (context, index) {
          return Container(
            margin: EdgeInsets.only(right: 10, left: 10),
            width: 179,
            child: Column(
              children: [
                Container(
                  width: 180,
                  height: 100,
                  decoration: BoxDecoration(),
                  child: InkWell(
                      onTap: () => Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => index1B[index].yolu),
                          ),
                      child: Image.network(
                        index1B[index].bayrak,
                        fit: BoxFit.cover,
                      )),
                ),
                Padding(
                    padding: EdgeInsets.only(top: 10.0),
                    child: Text(index1B[index].ulkeadi)),
              ],
            ),
          );
        },
      ),
    );
  }
}

class UlkeWidget extends StatelessWidget {
  const UlkeWidget({
    Key? key,
    required this.size,
  }) : super(key: key);

  final Size size;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: size.width * 1.0,
      height: 150,
      alignment: Alignment.center,
      child: ListView.builder(
        shrinkWrap: true,
        itemCount: index1A.length,
        physics: ScrollPhysics(),
        scrollDirection: Axis.horizontal,
        itemBuilder: (context, index) {
          return Container(
            margin: EdgeInsets.only(right: 10, left: 10),
            width: 179,
            child: Column(
              children: [
                Container(
                  width: 180,
                  height: 100,
                  decoration: BoxDecoration(),
                  child: InkWell(
                      onTap: () => Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => index1A[index].yolu),
                          ),
                      child: Image.network(
                        index1A[index].bayrak,
                        fit: BoxFit.cover,
                      )),
                ),
                Padding(
                    padding: EdgeInsets.only(top: 10.0),
                    child: Text(index1A[index].ulkeadi)),
              ],
            ),
          );
        },
      ),
    );
  }
}

class HarfWidget extends StatelessWidget {
  final String harf;
  HarfWidget({required this.harf});

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.centerLeft,
      height: 80,
      child: Container(
        margin: EdgeInsets.only(left: 10),
        decoration: BoxDecoration(
            boxShadow: [
              BoxShadow(
                color: Colors.black.withOpacity(0.3),
                spreadRadius: 5,
                blurRadius: 7,
                offset: Offset(0, 3), // changes position of shadow
              ),
            ],
            color: Color(0xFF810000),
            borderRadius: BorderRadius.only(topRight: Radius.circular(100))),
        alignment: Alignment.center,
        width: 100,
        height: 50,
        child: Text(
          harf,
          style: GoogleFonts.roboto(
            fontWeight: FontWeight.w800,
            fontSize: 18,
            color: Colors.white,
          ),
        ),
      ),
    );
  }
}

Widget UcuncuSira() {
  return Container();
}

Widget DorduncuSira() {
  return Container();
}

Widget BesinciSira() {
  return Container();
}

Widget AltinciSira() {
  return Container();
}

Widget YedinciSira() {
  return Container();
}

Widget SekizinciSira() {
  return Container();
}

Widget DokuzuncuSira() {
  return Container();
}
