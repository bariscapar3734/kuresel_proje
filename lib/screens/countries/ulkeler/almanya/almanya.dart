import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:kureselproje_app/models/ulke_scaffold_liste.dart';
import '../../../ulke_scaffold.dart';

class almanya extends StatefulWidget {
  @override
  _almanyaState createState() => _almanyaState();
}

class _almanyaState extends State<almanya> {
  get index => 0;

  @override
  Widget build(BuildContext context) {
    return Ulke_detay_scaffold(
      appbartitle: "Amerika Birleşik Devletleri",
      appbarimage: "assets/images/flags/amerika.jpg",
      itemcountlenght: almanya_sayfasi.length,
      kisabilgitext: almanya_sayfasi[index].bilgitext,
      kita: almanya_sayfasi[index].bulundugukita,
      baskent: almanya_sayfasi[index].baskenti,
      din: almanya_sayfasi[index].din,
      dil: almanya_sayfasi[index].dil,
      telefonkod: almanya_sayfasi[index].telefonkod,
      toprakalan: almanya_sayfasi[index].alan,
      parabirim: almanya_sayfasi[index].parabirim,
      nufus: almanya_sayfasi[index].nufus,

      //Nüfus Bilgileri
      nufusdegeri: almanya_sayfasi[index].toplamnufus,
      isgucudegeri: almanya_sayfasi[index].kullanilabilir_is_gucu,
      askerlikelverisdegeri: almanya_sayfasi[index].askerlige_elveris_gucu,
      askerlikcagidegeri: almanya_sayfasi[index].askerlik_cagina_ulasanlar,
      toplamaskerdegeri: almanya_sayfasi[index].toplam_asker_sayisi,
      aktifaskerdegeri: almanya_sayfasi[index].aktif_asker_sayisi,
      yedekaskerdegeri: almanya_sayfasi[index].yedek_asker_sayisi,
      //Petrol Bilgileri
      petroluretimdegeri: almanya_sayfasi[index].petroluretimi,
      petroltuketimdegeri: almanya_sayfasi[index].petroltuketimi,
      petrolrezervidegeri: almanya_sayfasi[index].petrolrezervi,
      //Kara Kuvvetleri Bilgileri
      tankdegeri: almanya_sayfasi[index].tanklar,
      zirhlisavasaracdegeri: almanya_sayfasi[index].zirhlisavasaraclari,
      kundagimotorlusilahlardegeri:
          almanya_sayfasi[index].kundagimotorlusilahlar,
      cekilitopculardegeri: almanya_sayfasi[index].cekilitopcular,
      cokluroketatarlardegeri: almanya_sayfasi[index].cokluroketatarlar,
      //Hava Kuvvetleri Bilgileri
      toplamucaklardegeri: almanya_sayfasi[index].toplamucaklar,
      avonlemeucaklaridegeri: almanya_sayfasi[index].avonlemeucaklari,
      nakliyeucaklaridegeri: almanya_sayfasi[index].nakliyeucaklari,
      egitimucaklaridegeri: almanya_sayfasi[index].egitimucaklari,
      helikopterlerdegeri: almanya_sayfasi[index].helikopterler,
      taaruzhelikopterlerdegeri: almanya_sayfasi[index].taaruzhelikopterleri,
      //Deniz Kuvvetleri Bilgileri
      toplamdonanmagucudegeri: almanya_sayfasi[index].toplamdonanmgucu,
      ucakgemisidegeri: almanya_sayfasi[index].ucakgemisi,
      firkateyndegeri: almanya_sayfasi[index].firkateyn,
      destroyerdegeri: almanya_sayfasi[index].destroyer,
      korvetdegeri: almanya_sayfasi[index].korvet,
      denizaltidegeri: almanya_sayfasi[index].denizalti,
      sahilguvenlikbotudegeri: almanya_sayfasi[index].sahilguvenlikbotu,
      mayingemileridegeri: almanya_sayfasi[index].mayingemileri,
      //Lojistik Veriler Bilgileri
      lojistikisgucudegeri: almanya_sayfasi[index].lojistikisgucu,
      ticaretfilosudegeri: almanya_sayfasi[index].ticaretfilosu,
      limanveterminaldegeri: almanya_sayfasi[index].limanlarveterminaller,
      karayoluagidegeri: almanya_sayfasi[index].karayoluagi,
      demiryoluagidegeri: almanya_sayfasi[index].demiryoluagi,
      havaalanlaridegeri: almanya_sayfasi[index].havaalanlari,
      //Ekonomik Veriler
      savunmabutcesidegeri: almanya_sayfasi[index].savunmabutcesi,
      disborcdegeri: almanya_sayfasi[index].disborc,
      altinvedovizrezervdegeri: almanya_sayfasi[index].altinvedovizrezerv,
      satinalmagucudegeri: almanya_sayfasi[index].satinalmagucuparitesi,
      //Coğrafi Veriler
      toprakbuyuklugudegeri: almanya_sayfasi[index].toprakbuyuklugu,
      kiyiseridiuzunlugudegeri: almanya_sayfasi[index].kiyiseridiuzunlugu,
      paylasilansinirlardegeri: almanya_sayfasi[index].paylasilansinirlar,
      suyollaridegeri: almanya_sayfasi[index].suyollari,
    );
  }
}
