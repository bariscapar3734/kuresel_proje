import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/rendering.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:flutter_card_swipper/flutter_card_swiper.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:kureselproje_app/models/home_one_data/veri2.dart';
import 'package:kureselproje_app/models/home_one_data/veri.dart';
import 'package:kureselproje_app/screens/anasayfa_routes/sicak_atismalar/g.kore_k.kore.dart';
import 'package:kureselproje_app/screens/anasayfa_routes/sicak_atismalar/hindistan_cin.dart';
import 'package:kureselproje_app/screens/anasayfa_routes/sicak_atismalar/tayvan_cin.dart';
import 'package:kureselproje_app/screens/anasayfa_routes/sicak_atismalar/turkiye_yunanistan.dart';
import 'package:kureselproje_app/screens/anasayfa_routes/sicak_atismalar/ukrayna_rusya.dart';
import '../../../ui/helper/color_helper.dart';
import '../../../models/home_one_data/veri3.dart';

class OneTabs extends StatefulWidget {
  _OneTabsState createState() => _OneTabsState();
}

class _OneTabsState extends State<OneTabs> {
  final Future<FirebaseApp> _initialization = Firebase.initializeApp();
  final _firestore = FirebaseFirestore.instance;
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    CollectionReference PopulerRef = _firestore.collection("populer_kategori");
    CollectionReference BolgelerRef = _firestore.collection("en_iyi_bolgeler");

    return Container(
      child: ListView(
        scrollDirection: Axis.vertical,
        children: <Widget>[
          SizedBox(height: 15.0),
          Container(
            height: 30,
            padding: EdgeInsets.only(left: 20),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Text("İLK 10 ÜLKE",
                    style: GoogleFonts.notoSans(
                      fontWeight: FontWeight.w700,
                      fontSize: 20,
                      color: Colors.black,
                    )),
              ],
            ),
          ),
          SwiperContainer(),
          SizedBox(height: 20.0),
          Container(
            height: 30,
            padding: EdgeInsets.only(left: 20),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Icon(
                  Icons.star_outlined,
                  color: Color(0xff99154e),
                ),
                Text("Popüler Kategoriler",
                    style: GoogleFonts.notoSans(
                      fontWeight: FontWeight.w700,
                      fontSize: 18,
                      color: Colors.black,
                    )),
              ],
            ),
          ),
          PopulerKategory(PopulerRef: PopulerRef),
          SizedBox(height: 20.0),
          Column(
            children: [
              Container(
                width: size.width * 1.0,
                child: Column(
                  children: [
                    Row(
                      children: [
                        SizedBox(width: 10),
                        Icon(
                          Icons.local_fire_department_outlined,
                          color: Colors.redAccent[700],
                        ),
                        SizedBox(width: 10),
                        DefaultTextStyle(
                          style: const TextStyle(
                            fontSize: 17.0,
                            color: Colors.black,
                            fontWeight: FontWeight.bold,
                            letterSpacing: 1,
                          ),
                          child: Text("Sıcak Atışmalar"),
                        ),
                      ],
                    ),
                    SizedBox(height: 5),
                    Divider(
                      color: Colors.redAccent[700],
                      thickness: 3,
                      endIndent: 200,
                      indent: 5,
                    ),
                  ],
                ),
              ),
            ],
          ),
          SicakAtismalar(size: size),
          SizedBox(height: 20),
          Column(
            children: [
              Container(
                width: size.width * 1.0,
                child: Column(
                  children: [
                    Row(
                      children: [
                        SizedBox(width: 10),
                        Icon(
                          Icons.local_fire_department_outlined,
                          color: Colors.redAccent[700],
                        ),
                        SizedBox(width: 10),
                        DefaultTextStyle(
                          style: const TextStyle(
                            fontSize: 17.0,
                            color: Colors.black,
                            fontWeight: FontWeight.bold,
                            letterSpacing: 1,
                          ),
                          child: Text("En İyi Bölgeler"),
                        ),
                      ],
                    ),
                    SizedBox(height: 5),
                    Divider(
                      color: Colors.redAccent[700],
                      thickness: 3,
                      endIndent: 200,
                      indent: 5,
                    ),
                  ],
                ),
              ),
            ],
          ),
          EniyiBolgeler(BolgelerRef: BolgelerRef, size: size),
          SizedBox(height: 20),
        ],
      ),
    );
  }

  Widget SwiperContainer() {
    return Container(
      height: 350,
      padding: const EdgeInsets.only(top: 10, left: 32),
      child: Swiper(
        itemCount: planets.length,
        itemWidth: MediaQuery.of(context).size.width - 2 * 64,
        layout: SwiperLayout.STACK,
        duration: 4000,
        autoplay: true,
        itemBuilder: (context, index) {
          return InkWell(
            onTap: () {},
            child: Stack(
              children: <Widget>[
                Column(
                  children: <Widget>[
                    SizedBox(height: 130),
                    Card(
                      elevation: 8,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(36),
                      ),
                      color: Colors.white,
                      child: Padding(
                        padding: const EdgeInsets.all(32.0),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                            SizedBox(height: 25),
                            Text(
                              planets[index].name,
                              style: TextStyle(
                                fontFamily: 'Avenir',
                                fontSize: 25,
                                color: Colors.redAccent[700],
                                fontWeight: FontWeight.w900,
                              ),
                              textAlign: TextAlign.left,
                            ),
                            Text(
                              'Başkent',
                              style: TextStyle(
                                fontFamily: 'Avenir',
                                fontSize: 23,
                                color: primaryTextColor.withOpacity(0.7),
                                fontWeight: FontWeight.w500,
                              ),
                              textAlign: TextAlign.left,
                            ),
                            Row(
                              children: <Widget>[
                                Text(
                                  'Daha Fazlası',
                                  style: TextStyle(
                                    fontFamily: 'Avenir',
                                    fontSize: 18,
                                    color: secondaryTextColor,
                                    fontWeight: FontWeight.w500,
                                  ),
                                  textAlign: TextAlign.left,
                                ),
                                Icon(
                                  Icons.arrow_forward,
                                  color: secondaryTextColor,
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
                Hero(
                  tag: planets[index].position,
                  child: Image.network(planets[index].iconImage),
                ),
                Positioned(
                  right: 24,
                  bottom: 50,
                  child: Text(
                    planets[index].position.toString(),
                    style: TextStyle(
                      fontFamily: 'Avenir',
                      fontSize: 70,
                      color: Colors.black,
                      fontWeight: FontWeight.w900,
                    ),
                    textAlign: TextAlign.left,
                  ),
                ),
              ],
            ),
          );
        },
      ),
    );
  }
}

class EniyiBolgeler extends StatelessWidget {
  const EniyiBolgeler({
    Key? key,
    required this.BolgelerRef,
    required this.size,
  }) : super(key: key);

  final CollectionReference<Object?> BolgelerRef;
  final Size size;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        StreamBuilder<QuerySnapshot>(
          stream: BolgelerRef.snapshots(),
          builder: (BuildContext context, AsyncSnapshot asyncSnapshot) {
            if (asyncSnapshot.hasError) {
              return Center(
                child: Text("Bir Hata Oluştu"),
              );
            } else {
              if (asyncSnapshot.hasData) {
                List<DocumentSnapshot> listofDocumentSnap =
                    asyncSnapshot.data.docs;
                return Container(
                  padding: EdgeInsets.only(
                    left: 10,
                    right: 10,
                  ),
                  height: 1740,
                  child: Column(
                    children: [
                      Flexible(
                        child: ListView.builder(
                          scrollDirection: Axis.vertical,
                          physics: ScrollPhysics(),
                          itemCount: listofDocumentSnap.length,
                          itemBuilder: (context, index) {
                            return Container(
                              child: Column(
                                children: [
                                  SizedBox(height: 10),
                                  Container(
                                    clipBehavior: Clip.antiAlias,
                                    width: size.width * 1.0,
                                    height: size.height * 0.25,
                                    margin: EdgeInsets.only(top: 10),
                                    decoration: BoxDecoration(
                                      boxShadow: [
                                        BoxShadow(
                                          color: Colors.grey.withOpacity(0.5),
                                          spreadRadius: 5,
                                          blurRadius: 7,
                                          offset: Offset(0,
                                              3), // changes position of shadow
                                        ),
                                      ],
                                      borderRadius: BorderRadius.only(
                                        topRight: Radius.circular(100),
                                      ),
                                    ),
                                    child: InkWell(
                                      onTap: () => Navigator.push(
                                        context,
                                        MaterialPageRoute(
                                            builder: (context) =>
                                                bolgekategoriler_oneTabs[index]
                                                    .yolu),
                                      ),
                                      child: Image.network(
                                        "${(listofDocumentSnap[index].data() as Map)['images']}",
                                        height: 200,
                                        width: 200,
                                        fit: BoxFit.cover,
                                      ),
                                    ),
                                  ),
                                  SizedBox(height: 10),
                                  Container(
                                    alignment: Alignment.topCenter,
                                    height: size.height * 0.13,
                                    width: size.width * 1.0,
                                    decoration: BoxDecoration(
                                      boxShadow: [
                                        BoxShadow(
                                          color: Colors.grey.withOpacity(0.5),
                                          spreadRadius: 5,
                                          blurRadius: 7,
                                          offset: Offset(0,
                                              3), // changes position of shadow
                                        ),
                                      ],
                                      color: Colors.white,
                                      borderRadius: BorderRadius.only(
                                        bottomRight: Radius.circular(100),
                                      ),
                                    ),
                                    child: Column(
                                      children: [
                                        Text(
                                          "${(listofDocumentSnap[index].data() as Map)['kategori']}",
                                          style: GoogleFonts.balooTammudu(
                                            fontSize: 18,
                                            color: Colors.black,
                                          ),
                                        ),
                                        Container(
                                          padding: EdgeInsets.only(
                                            left: 10,
                                            right: 30,
                                          ),
                                          alignment: Alignment.centerLeft,
                                          child: Text(
                                            "${(listofDocumentSnap[index].data() as Map)['aciklama']}",
                                            style: GoogleFonts.roboto(
                                              fontSize: 14,
                                              color: Colors.black,
                                            ),
                                            overflow: TextOverflow.ellipsis,
                                            maxLines: 1,
                                            softWrap: false,
                                          ),
                                        ),
                                        Container(
                                          padding: EdgeInsets.only(
                                            left: 10,
                                            top: 10,
                                          ),
                                          child: Row(
                                            children: [
                                              Text(
                                                "En Güçlü 3 Ülke : ",
                                                style: GoogleFonts.roboto(
                                                  fontWeight: FontWeight.w700,
                                                ),
                                              ),
                                              Row(
                                                children: [
                                                  SizedBox(width: 10),
                                                  Container(
                                                    decoration: BoxDecoration(
                                                      boxShadow: [
                                                        BoxShadow(
                                                          color: Colors.black
                                                              .withOpacity(0.5),
                                                          spreadRadius: 3,
                                                          blurRadius: 7,
                                                          offset: Offset(0,
                                                              0), // changes position of shadow
                                                        ),
                                                      ],
                                                    ),
                                                    child: Image.network(
                                                      "${(listofDocumentSnap[index].data() as Map)['ulke_1']}",
                                                      fit: BoxFit.cover,
                                                      width: 40,
                                                    ),
                                                  ),
                                                  SizedBox(width: 15),
                                                  Container(
                                                    decoration: BoxDecoration(
                                                      boxShadow: [
                                                        BoxShadow(
                                                          color: Colors.black
                                                              .withOpacity(0.5),
                                                          spreadRadius: 3,
                                                          blurRadius: 7,
                                                          offset: Offset(0,
                                                              0), // changes position of shadow
                                                        ),
                                                      ],
                                                    ),
                                                    child: Image.network(
                                                      "${(listofDocumentSnap[index].data() as Map)['ulke_2']}",
                                                      fit: BoxFit.cover,
                                                      width: 40,
                                                    ),
                                                  ),
                                                  SizedBox(width: 15),
                                                  Container(
                                                    decoration: BoxDecoration(
                                                      boxShadow: [
                                                        BoxShadow(
                                                          color: Colors.black
                                                              .withOpacity(0.5),
                                                          spreadRadius: 3,
                                                          blurRadius: 7,
                                                          offset: Offset(0,
                                                              0), // changes position of shadow
                                                        ),
                                                      ],
                                                    ),
                                                    child: Image.network(
                                                      "${(listofDocumentSnap[index].data() as Map)['ulke_3']}",
                                                      fit: BoxFit.cover,
                                                      width: 40,
                                                    ),
                                                  ),
                                                ],
                                              ),
                                            ],
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                  SizedBox(height: 10),
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
        ),
      ],
    );
  }
}

class PopulerKategory extends StatelessWidget {
  const PopulerKategory({
    Key? key,
    required this.PopulerRef,
  }) : super(key: key);

  final CollectionReference<Object?> PopulerRef;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        StreamBuilder<QuerySnapshot>(
          stream: PopulerRef.snapshots(),
          builder: (BuildContext context, AsyncSnapshot asyncSnapshot) {
            if (asyncSnapshot.hasError) {
              return Center(
                child: Text("Bir Hata Oluştu"),
              );
            } else {
              if (asyncSnapshot.hasData) {
                List<DocumentSnapshot> listofDocumentSnap =
                    asyncSnapshot.data.docs;
                return Flexible(
                  child: Container(
                    margin: EdgeInsets.only(
                      top: 30,
                      left: 10,
                      bottom: 20,
                    ),
                    height: 340,
                    child: ListView.builder(
                      scrollDirection: Axis.horizontal,
                      physics: ScrollPhysics(),
                      itemCount: listofDocumentSnap.length,
                      itemBuilder: (context, index) {
                        return Card(
                          elevation: 8.0,
                          clipBehavior: Clip.antiAlias,
                          child: Column(
                            children: [
                              InkWell(
                                onTap: () => Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) =>
                                          populerkategoriler_oneTabs[index]
                                              .yolu),
                                ),
                                child: Image.network(
                                  "${(listofDocumentSnap[index].data() as Map)['image']}",
                                  height: 200,
                                  width: 200,
                                  fit: BoxFit.cover,
                                ),
                              ),
                              SizedBox(
                                height: 10,
                              ),
                              Text(
                                "${(listofDocumentSnap[index].data() as Map)['baslik']}",
                                style: GoogleFonts.robotoMono(
                                  color: Colors.redAccent[700],
                                  fontSize: 16,
                                  fontWeight: FontWeight.w600,
                                ),
                              ),
                              SizedBox(
                                height: 25,
                              ),
                              Container(
                                padding: EdgeInsets.only(left: 10, right: 10),
                                width: 250,
                                child: Text(
                                  "${(listofDocumentSnap[index].data() as Map)['altyazi']}",
                                  style: GoogleFonts.balooTammudu(
                                      fontSize: 15, color: Color(0xff1b1717)),
                                  overflow: TextOverflow.ellipsis,
                                  maxLines: 1,
                                  softWrap: false,
                                ),
                              ),
                              SizedBox(
                                height: 15,
                              ),
                              Container(
                                width: 250,
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.end,
                                  children: [
                                    Text(
                                      "Sayfaya Git",
                                      style: GoogleFonts.notoSans(
                                          color: Color(0xff39a6a3)),
                                    ),
                                    Icon(
                                      Icons.double_arrow_outlined,
                                      color: Color(0xFF39a6a3),
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        );
                      },
                    ),
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
        ),
      ],
    );
  }
}

class SicakAtismalar extends StatelessWidget {
  const SicakAtismalar({
    Key? key,
    required this.size,
  }) : super(key: key);

  final Size size;

  @override
  Widget build(BuildContext context) {
    return CarouselSlider(
      options: CarouselOptions(
        enlargeCenterPage: true,
        autoPlay: true,
        aspectRatio: 2.0,
        autoPlayCurve: Curves.fastOutSlowIn,
        enableInfiniteScroll: true,
        autoPlayAnimationDuration: Duration(milliseconds: 1600),
        viewportFraction: 0.8,
      ),
      items: [
        Card(
          clipBehavior: Clip.antiAlias,
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(24)),
          child: Stack(
            alignment: Alignment.center,
            children: [
              //ArkaPlan
              Ink.image(
                image: NetworkImage(
                  "https://firebasestorage.googleapis.com/v0/b/kureselproje-final.appspot.com/o/sicakAtismalar%2Fdunya.jpg?alt=media&token=38422e19-544a-4120-8250-69b160de66e5",
                ),
                child: InkWell(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => ukraynaVSrusya(),
                      ),
                    );
                  },
                ),
                fit: BoxFit.cover,
              ),
              //Bayrak
              Positioned(
                left: 10,
                top: 10,
                child: Container(
                  decoration: BoxDecoration(
                    boxShadow: [
                      BoxShadow(
                        color: Colors.grey.withOpacity(0.5),
                        spreadRadius: 5,
                        blurRadius: 7,
                        offset: Offset(0, 3), // changes position of shadow
                      ),
                    ],
                  ),
                  child: Image.network(
                    "https://firebasestorage.googleapis.com/v0/b/kureselproje-final.appspot.com/o/flags%2Fukrayna.jpg?alt=media&token=7bf20a3a-5803-46d3-9cef-dbcd9866903e",
                    fit: BoxFit.cover,
                    width: 60,
                  ),
                ),
              ),
              //Şimşek
              Positioned(
                top: 10,
                left: 63,
                child: Icon(
                  Icons.flash_on_outlined,
                  color: Colors.amber,
                  size: 40,
                ),
              ),
              //Bayrak
              Positioned(
                left: 95,
                top: 10,
                child: Container(
                  decoration: BoxDecoration(
                    boxShadow: [
                      BoxShadow(
                        color: Colors.grey.withOpacity(0.5),
                        spreadRadius: 5,
                        blurRadius: 7,
                        offset: Offset(0, 3), // changes position of shadow
                      ),
                    ],
                  ),
                  child: Image.network(
                    "https://firebasestorage.googleapis.com/v0/b/kureselproje-final.appspot.com/o/flags%2Frusya.jpg?alt=media&token=64a8ad12-70cb-4457-9443-e1c54f535a59",
                    fit: BoxFit.cover,
                    width: 60,
                  ),
                ),
              ),
              //Alt Yazı
              Positioned(
                left: 0,
                right: 0,
                bottom: 0,
                child: Container(
                  height: 40,
                  decoration: BoxDecoration(
                    color: Colors.black54,
                    borderRadius: BorderRadius.only(
                      bottomLeft: Radius.circular(24),
                      bottomRight: Radius.circular(24),
                    ),
                  ),
                  width: size.width * 1.0,
                  padding: EdgeInsets.only(
                    right: 15,
                    top: 5,
                  ),
                  child: RichText(
                    textAlign: TextAlign.right,
                    text: TextSpan(children: [
                      TextSpan(
                        text: "Ukrayna ",
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          color: Color(0xff0c9869),
                          fontSize: 24,
                          fontFamily: "Itim",
                          letterSpacing: 1,
                        ),
                      ),
                      TextSpan(
                        text: "vs",
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          color: Colors.amber,
                          fontSize: 22,
                          fontFamily: "Itim",
                          letterSpacing: 1,
                        ),
                      ),
                      TextSpan(
                        text: " Rusya",
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          color: Color(0xff0c9869),
                          fontSize: 24,
                          fontFamily: "Itim",
                          letterSpacing: 1,
                        ),
                      ),
                    ]),
                  ),
                ),
              ),
            ],
          ),
        ),
        Card(
          clipBehavior: Clip.antiAlias,
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(24)),
          child: Stack(
            alignment: Alignment.center,
            children: [
              //ArkaPlan
              Ink.image(
                image: NetworkImage(
                  "https://firebasestorage.googleapis.com/v0/b/kureselproje-final.appspot.com/o/sicakAtismalar%2Fdunya.jpg?alt=media&token=38422e19-544a-4120-8250-69b160de66e5",
                ),
                child: InkWell(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => tayvanVScin(),
                      ),
                    );
                  },
                ),
                fit: BoxFit.cover,
              ),
              //Bayrak
              Positioned(
                left: 10,
                top: 10,
                child: Container(
                  decoration: BoxDecoration(
                    boxShadow: [
                      BoxShadow(
                        color: Colors.grey.withOpacity(0.5),
                        spreadRadius: 5,
                        blurRadius: 7,
                        offset: Offset(0, 3), // changes position of shadow
                      ),
                    ],
                  ),
                  child: Image.network(
                    "https://firebasestorage.googleapis.com/v0/b/kureselproje-final.appspot.com/o/flags%2Ftayvan.jpg?alt=media&token=66301762-e86b-4a1a-a294-359f2b615594",
                    fit: BoxFit.cover,
                    width: 60,
                  ),
                ),
              ),
              //Şimşek
              Positioned(
                top: 10,
                left: 63,
                child: Icon(
                  Icons.flash_on_outlined,
                  color: Colors.amber,
                  size: 40,
                ),
              ),
              //Bayrak
              Positioned(
                left: 95,
                top: 10,
                child: Container(
                  decoration: BoxDecoration(
                    boxShadow: [
                      BoxShadow(
                        color: Colors.grey.withOpacity(0.5),
                        spreadRadius: 5,
                        blurRadius: 7,
                        offset: Offset(0, 3), // changes position of shadow
                      ),
                    ],
                  ),
                  child: Image.network(
                    "https://firebasestorage.googleapis.com/v0/b/kureselproje-final.appspot.com/o/flags%2Fcin.jpg?alt=media&token=0f77292e-6bc2-4489-90f5-670dd5b51483",
                    fit: BoxFit.cover,
                    width: 60,
                  ),
                ),
              ),
              //Alt Yazı
              Positioned(
                left: 0,
                right: 0,
                bottom: 0,
                child: Container(
                  height: 40,
                  decoration: BoxDecoration(
                    color: Colors.black54,
                    borderRadius: BorderRadius.only(
                      bottomLeft: Radius.circular(24),
                      bottomRight: Radius.circular(24),
                    ),
                  ),
                  width: size.width * 1.0,
                  padding: EdgeInsets.only(
                    right: 15,
                    top: 5,
                  ),
                  child: RichText(
                    textAlign: TextAlign.right,
                    text: TextSpan(children: [
                      TextSpan(
                        text: "Tayvan ",
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          color: Color(0xff0c9869),
                          fontSize: 24,
                          fontFamily: "Itim",
                          letterSpacing: 1,
                        ),
                      ),
                      TextSpan(
                        text: "vs",
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          color: Colors.amber,
                          fontSize: 24,
                          fontFamily: "Itim",
                          letterSpacing: 1,
                        ),
                      ),
                      TextSpan(
                        text: " Çin",
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          color: Color(0xff0c9869),
                          fontSize: 24,
                          fontFamily: "Itim",
                          letterSpacing: 1,
                        ),
                      ),
                    ]),
                  ),
                ),
              ),
            ],
          ),
        ),
        Card(
          clipBehavior: Clip.antiAlias,
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(24)),
          child: Stack(
            alignment: Alignment.center,
            children: [
              //ArkaPlan
              Ink.image(
                image: NetworkImage(
                  "https://firebasestorage.googleapis.com/v0/b/kureselproje-final.appspot.com/o/sicakAtismalar%2Fdunya.jpg?alt=media&token=38422e19-544a-4120-8250-69b160de66e5",
                ),
                child: InkWell(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => turkiyeVSyunanistan(),
                      ),
                    );
                  },
                ),
                fit: BoxFit.cover,
              ),
              //Bayrak
              Positioned(
                left: 10,
                top: 10,
                child: Container(
                  decoration: BoxDecoration(
                    boxShadow: [
                      BoxShadow(
                        color: Colors.grey.withOpacity(0.5),
                        spreadRadius: 5,
                        blurRadius: 7,
                        offset: Offset(0, 3), // changes position of shadow
                      ),
                    ],
                  ),
                  child: Image.network(
                    "https://firebasestorage.googleapis.com/v0/b/kureselproje-final.appspot.com/o/flags%2Fturkiye.jpg?alt=media&token=aa5b6854-1877-49af-85ad-b61026622c29",
                    fit: BoxFit.cover,
                    width: 60,
                  ),
                ),
              ),
              //Şimşek
              Positioned(
                top: 10,
                left: 63,
                child: Icon(
                  Icons.flash_on_outlined,
                  color: Colors.amber,
                  size: 40,
                ),
              ),
              //Bayrak
              Positioned(
                left: 95,
                top: 10,
                child: Container(
                  decoration: BoxDecoration(
                    boxShadow: [
                      BoxShadow(
                        color: Colors.grey.withOpacity(0.5),
                        spreadRadius: 5,
                        blurRadius: 7,
                        offset: Offset(0, 3), // changes position of shadow
                      ),
                    ],
                  ),
                  child: Image.network(
                    "https://firebasestorage.googleapis.com/v0/b/kureselproje-final.appspot.com/o/flags%2Fyunanistan.jpg?alt=media&token=d55c693a-f329-4311-96ee-bfbb58e2c528",
                    fit: BoxFit.cover,
                    width: 60,
                  ),
                ),
              ),
              //Alt Yazı
              Positioned(
                left: 0,
                right: 0,
                bottom: 0,
                child: Container(
                  height: 40,
                  decoration: BoxDecoration(
                    color: Colors.black54,
                    borderRadius: BorderRadius.only(
                      bottomLeft: Radius.circular(24),
                      bottomRight: Radius.circular(24),
                    ),
                  ),
                  width: size.width * 1.0,
                  padding: EdgeInsets.only(
                    right: 15,
                    top: 5,
                  ),
                  child: RichText(
                    textAlign: TextAlign.right,
                    text: TextSpan(children: [
                      TextSpan(
                        text: "Türkiye ",
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          color: Color(0xff0c9869),
                          fontSize: 24,
                          fontFamily: "Itim",
                          letterSpacing: 1,
                        ),
                      ),
                      TextSpan(
                        text: "vs",
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          color: Colors.amber,
                          fontSize: 24,
                          fontFamily: "Itim",
                          letterSpacing: 1,
                        ),
                      ),
                      TextSpan(
                        text: " Yunanistan",
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          color: Color(0xff0c9869),
                          fontSize: 24,
                          fontFamily: "Itim",
                          letterSpacing: 1,
                        ),
                      ),
                    ]),
                  ),
                ),
              ),
            ],
          ),
        ),
        Card(
          clipBehavior: Clip.antiAlias,
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(24)),
          child: Stack(
            alignment: Alignment.center,
            children: [
              //ArkaPlan
              Ink.image(
                image: NetworkImage(
                  "https://firebasestorage.googleapis.com/v0/b/kureselproje-final.appspot.com/o/sicakAtismalar%2Fdunya.jpg?alt=media&token=38422e19-544a-4120-8250-69b160de66e5",
                ),
                child: InkWell(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => hindistanVScin(),
                      ),
                    );
                  },
                ),
                fit: BoxFit.cover,
              ),
              //Bayrak
              Positioned(
                left: 10,
                top: 10,
                child: Container(
                  decoration: BoxDecoration(
                    boxShadow: [
                      BoxShadow(
                        color: Colors.grey.withOpacity(0.5),
                        spreadRadius: 5,
                        blurRadius: 7,
                        offset: Offset(0, 3), // changes position of shadow
                      ),
                    ],
                  ),
                  child: Image.network(
                    "https://firebasestorage.googleapis.com/v0/b/kureselproje-final.appspot.com/o/flags%2Fhindistan.jpg?alt=media&token=282e9c28-e05d-4377-9670-7ae3907787dc",
                    fit: BoxFit.cover,
                    width: 60,
                  ),
                ),
              ),
              //Şimşek
              Positioned(
                top: 10,
                left: 63,
                child: Icon(
                  Icons.flash_on_outlined,
                  color: Colors.amber,
                  size: 40,
                ),
              ),
              //Bayrak
              Positioned(
                left: 95,
                top: 10,
                child: Container(
                  decoration: BoxDecoration(
                    boxShadow: [
                      BoxShadow(
                        color: Colors.grey.withOpacity(0.5),
                        spreadRadius: 5,
                        blurRadius: 7,
                        offset: Offset(0, 3), // changes position of shadow
                      ),
                    ],
                  ),
                  child: Image.network(
                    "https://firebasestorage.googleapis.com/v0/b/kureselproje-final.appspot.com/o/flags%2Fcin.jpg?alt=media&token=0f77292e-6bc2-4489-90f5-670dd5b51483",
                    fit: BoxFit.cover,
                    width: 60,
                  ),
                ),
              ),
              //Alt Yazı
              Positioned(
                left: 0,
                right: 0,
                bottom: 0,
                child: Container(
                  height: 40,
                  decoration: BoxDecoration(
                    color: Colors.black54,
                    borderRadius: BorderRadius.only(
                      bottomLeft: Radius.circular(24),
                      bottomRight: Radius.circular(24),
                    ),
                  ),
                  width: size.width * 1.0,
                  padding: EdgeInsets.only(
                    right: 15,
                    top: 5,
                  ),
                  child: RichText(
                    textAlign: TextAlign.right,
                    text: TextSpan(children: [
                      TextSpan(
                        text: "Hindistan ",
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          color: Color(0xff0c9869),
                          fontSize: 24,
                          fontFamily: "Itim",
                          letterSpacing: 1,
                        ),
                      ),
                      TextSpan(
                        text: "vs",
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          color: Colors.amber,
                          fontSize: 24,
                          fontFamily: "Itim",
                          letterSpacing: 1,
                        ),
                      ),
                      TextSpan(
                        text: " Çin",
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          color: Color(0xff0c9869),
                          fontSize: 24,
                          fontFamily: "Itim",
                          letterSpacing: 1,
                        ),
                      ),
                    ]),
                  ),
                ),
              ),
            ],
          ),
        ),
        Card(
          clipBehavior: Clip.antiAlias,
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(24)),
          child: Stack(
            alignment: Alignment.center,
            children: [
              //ArkaPlan
              Ink.image(
                image: NetworkImage(
                  "https://firebasestorage.googleapis.com/v0/b/kureselproje-final.appspot.com/o/sicakAtismalar%2Fdunya.jpg?alt=media&token=38422e19-544a-4120-8250-69b160de66e5",
                ),
                child: InkWell(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => guneyVSkore(),
                      ),
                    );
                  },
                ),
                fit: BoxFit.cover,
              ),
              //Bayrak
              Positioned(
                left: 10,
                top: 10,
                child: Container(
                  decoration: BoxDecoration(
                    boxShadow: [
                      BoxShadow(
                        color: Colors.grey.withOpacity(0.5),
                        spreadRadius: 5,
                        blurRadius: 7,
                        offset: Offset(0, 3), // changes position of shadow
                      ),
                    ],
                  ),
                  child: Image.network(
                    "https://firebasestorage.googleapis.com/v0/b/kureselproje-final.appspot.com/o/flags%2Fguneykore.jpg?alt=media&token=1dfe4817-77d0-423b-a3bb-48ad8b725722",
                    fit: BoxFit.cover,
                    width: 60,
                  ),
                ),
              ),
              //Şimşek
              Positioned(
                top: 10,
                left: 63,
                child: Icon(
                  Icons.flash_on_outlined,
                  color: Colors.amber,
                  size: 40,
                ),
              ),
              //Bayrak
              Positioned(
                left: 95,
                top: 10,
                child: Container(
                  decoration: BoxDecoration(
                    boxShadow: [
                      BoxShadow(
                        color: Colors.grey.withOpacity(0.5),
                        spreadRadius: 5,
                        blurRadius: 7,
                        offset: Offset(0, 3), // changes position of shadow
                      ),
                    ],
                  ),
                  child: Image.network(
                    "https://firebasestorage.googleapis.com/v0/b/kureselproje-final.appspot.com/o/flags%2Fkuzeykore.jpg?alt=media&token=58858086-7a38-4281-9157-6efd8cb45ae7",
                    fit: BoxFit.cover,
                    width: 60,
                  ),
                ),
              ),
              //Alt Yazı
              Positioned(
                left: 0,
                right: 0,
                bottom: 0,
                child: Container(
                  height: 40,
                  decoration: BoxDecoration(
                    color: Colors.black54,
                    borderRadius: BorderRadius.only(
                      bottomLeft: Radius.circular(24),
                      bottomRight: Radius.circular(24),
                    ),
                  ),
                  width: size.width * 1.0,
                  padding: EdgeInsets.only(
                    right: 15,
                    top: 5,
                  ),
                  child: RichText(
                    textAlign: TextAlign.right,
                    text: TextSpan(children: [
                      TextSpan(
                        text: "G.Kore ",
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          color: Color(0xff0c9869),
                          fontSize: 24,
                          fontFamily: "Itim",
                          letterSpacing: 1,
                        ),
                      ),
                      TextSpan(
                        text: "vs",
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          color: Colors.amber,
                          fontSize: 24,
                          fontFamily: "Itim",
                          letterSpacing: 1,
                        ),
                      ),
                      TextSpan(
                        text: " K.Kore",
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          color: Color(0xff0c9869),
                          fontSize: 24,
                          fontFamily: "Itim",
                          letterSpacing: 1,
                        ),
                      ),
                    ]),
                  ),
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
