import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:kureselproje_app/models/ulke_scaffold_liste.dart';
import 'package:carousel_slider/carousel_slider.dart';

class Ulke_detay_scaffold extends StatefulWidget {
  final String appbartitle;
  final String appbarimage;
  final int itemcountlenght;
  final String kisabilgitext;
  final String kita;
  final String baskent;
  final String din;
  final String dil;
  final String telefonkod;
  final String toprakalan;
  final String parabirim;
  final String nufus;

  //Nüfus Bilgileri
  final String nufusdegeri;
  final String isgucudegeri;
  final String askerlikelverisdegeri;
  final String askerlikcagidegeri;
  final String toplamaskerdegeri;
  final String aktifaskerdegeri;
  final String yedekaskerdegeri;
  //Petrol Bilgileri
  final String petroluretimdegeri;
  final String petroltuketimdegeri;
  final String petrolrezervidegeri;
  //Kara Kuvvetleri
  final String tankdegeri;
  final String zirhlisavasaracdegeri;
  final String kundagimotorlusilahlardegeri;
  final String cekilitopculardegeri;
  final String cokluroketatarlardegeri;
  //Hava Kuvvetleri
  final String toplamucaklardegeri;
  final String avonlemeucaklaridegeri;
  final String nakliyeucaklaridegeri;
  final String egitimucaklaridegeri;
  final String helikopterlerdegeri;
  final String taaruzhelikopterlerdegeri;
  //Deniz Kuvvetleri
  final String toplamdonanmagucudegeri;
  final String ucakgemisidegeri;
  final String firkateyndegeri;
  final String destroyerdegeri;
  final String korvetdegeri;
  final String denizaltidegeri;
  final String sahilguvenlikbotudegeri;
  final String mayingemileridegeri;
  //Lojistik Veriler
  final String lojistikisgucudegeri;
  final String ticaretfilosudegeri;
  final String limanveterminaldegeri;
  final String karayoluagidegeri;
  final String demiryoluagidegeri;
  final String havaalanlaridegeri;
  //Ekonomik Veriler
  final String savunmabutcesidegeri;
  final String disborcdegeri;
  final String altinvedovizrezervdegeri;
  final String satinalmagucudegeri;
  //Coğrafi Veriler
  final String toprakbuyuklugudegeri;
  final String kiyiseridiuzunlugudegeri;
  final String paylasilansinirlardegeri;
  final String suyollaridegeri;

  Ulke_detay_scaffold({
    required this.appbartitle,
    required this.appbarimage,
    required this.itemcountlenght,
    required this.kita,
    required this.baskent,
    required this.din,
    required this.dil,
    required this.telefonkod,
    required this.toprakalan,
    required this.parabirim,
    required this.nufus,
    required this.kisabilgitext,
    required this.nufusdegeri,
    required this.isgucudegeri,
    required this.askerlikelverisdegeri,
    required this.askerlikcagidegeri,
    required this.toplamaskerdegeri,
    required this.aktifaskerdegeri,
    required this.yedekaskerdegeri,
    required this.petroluretimdegeri,
    required this.petrolrezervidegeri,
    required this.petroltuketimdegeri,
    required this.tankdegeri,
    required this.zirhlisavasaracdegeri,
    required this.cekilitopculardegeri,
    required this.cokluroketatarlardegeri,
    required this.kundagimotorlusilahlardegeri,
    required this.avonlemeucaklaridegeri,
    required this.egitimucaklaridegeri,
    required this.helikopterlerdegeri,
    required this.nakliyeucaklaridegeri,
    required this.taaruzhelikopterlerdegeri,
    required this.toplamucaklardegeri,
    required this.denizaltidegeri,
    required this.destroyerdegeri,
    required this.firkateyndegeri,
    required this.korvetdegeri,
    required this.mayingemileridegeri,
    required this.sahilguvenlikbotudegeri,
    required this.toplamdonanmagucudegeri,
    required this.ucakgemisidegeri,
    required this.altinvedovizrezervdegeri,
    required this.demiryoluagidegeri,
    required this.disborcdegeri,
    required this.havaalanlaridegeri,
    required this.karayoluagidegeri,
    required this.kiyiseridiuzunlugudegeri,
    required this.limanveterminaldegeri,
    required this.lojistikisgucudegeri,
    required this.paylasilansinirlardegeri,
    required this.satinalmagucudegeri,
    required this.savunmabutcesidegeri,
    required this.suyollaridegeri,
    required this.ticaretfilosudegeri,
    required this.toprakbuyuklugudegeri,
  });

  @override
  _Ulke_detay_scaffoldState createState() => _Ulke_detay_scaffoldState();
}

class _Ulke_detay_scaffoldState extends State<Ulke_detay_scaffold> {
  CarouselController buttonCarouselController = CarouselController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black,
        title: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              padding: EdgeInsets.only(right: 9),
              child: Text(
                widget.appbartitle,
                style: TextStyle(color: Colors.white),
              ),
            ),
            Container(
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
              child: Image.asset(
                widget.appbarimage,
                fit: BoxFit.cover,
                width: 60,
              ),
            ),
          ],
        ),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: Center(
          child: Column(
            children: [
              ListView.builder(
                scrollDirection: Axis.vertical,
                shrinkWrap: true,
                physics: ScrollPhysics(),
                itemCount: almanya_sayfasi.length,
                itemBuilder: (context, index) {
                  return Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Card(
                        elevation: 20.0,
                        child: Center(
                          child: InkWell(
                            child: Image.asset(widget.appbarimage),
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      SizedBox(
                        height: 30,
                      ),
                    ],
                  );
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
