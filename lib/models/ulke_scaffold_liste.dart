class ulkebilgi {
  String bulundugukita;
  String baskenti;
  String din;
  String dil;
  String telefonkod;
  String alan;
  String parabirim;
  String nufus;
  String bilgitext;
  //Nüfus Bilgisi
  String toplamnufus;
  String kullanilabilir_is_gucu;
  String askerlige_elveris_gucu;
  String askerlik_cagina_ulasanlar;
  String toplam_asker_sayisi;
  String aktif_asker_sayisi;
  String yedek_asker_sayisi;
  //Petrol Bilgisi
  String petroluretimi;
  String petroltuketimi;
  String petrolrezervi;
  //Kara Kuvvetleri
  String tanklar;
  String zirhlisavasaraclari;
  String kundagimotorlusilahlar;
  String cekilitopcular;
  String cokluroketatarlar;
  //Hava Kuvvetleri
  String toplamucaklar;
  String avonlemeucaklari;
  String nakliyeucaklari;
  String egitimucaklari;
  String helikopterler;
  String taaruzhelikopterleri;
  //Deniz Kuvvetleri
  String toplamdonanmgucu;
  String ucakgemisi;
  String firkateyn;
  String destroyer;
  String korvet;
  String denizalti;
  String sahilguvenlikbotu;
  String mayingemileri;
  //Lojistik Veriler
  String lojistikisgucu;
  String ticaretfilosu;
  String limanlarveterminaller;
  String karayoluagi;
  String demiryoluagi;
  String havaalanlari;
  //Ekonomik Veriler
  String savunmabutcesi;
  String disborc;
  String altinvedovizrezerv;
  String satinalmagucuparitesi;
  //Coğrafi Veriler
  String toprakbuyuklugu;
  String kiyiseridiuzunlugu;
  String paylasilansinirlar;
  String suyollari;

  ulkebilgi(
    this.bulundugukita,
    this.baskenti,
    this.din,
    this.dil,
    this.telefonkod,
    this.alan,
    this.parabirim,
    this.nufus,
    this.bilgitext,
    //Nüfus Bilgisi
    this.toplamnufus,
    this.kullanilabilir_is_gucu,
    this.askerlige_elveris_gucu,
    this.askerlik_cagina_ulasanlar,
    this.toplam_asker_sayisi,
    this.aktif_asker_sayisi,
    this.yedek_asker_sayisi,
    //Petrol Bilgisi
    this.petroluretimi,
    this.petroltuketimi,
    this.petrolrezervi,
    //Kara Kuvvetleri Bilgisi
    this.tanklar,
    this.zirhlisavasaraclari,
    this.kundagimotorlusilahlar,
    this.cekilitopcular,
    this.cokluroketatarlar,
    //Hava Kuvvetleri Bilgisi
    this.toplamucaklar,
    this.avonlemeucaklari,
    this.nakliyeucaklari,
    this.egitimucaklari,
    this.helikopterler,
    this.taaruzhelikopterleri,
    //Deniz Kuvvetleri Bilgisi
    this.toplamdonanmgucu,
    this.ucakgemisi,
    this.firkateyn,
    this.destroyer,
    this.korvet,
    this.denizalti,
    this.sahilguvenlikbotu,
    this.mayingemileri,
    //Lojistik Veriler Bilgisi
    this.lojistikisgucu,
    this.ticaretfilosu,
    this.limanlarveterminaller,
    this.karayoluagi,
    this.demiryoluagi,
    this.havaalanlari,
    //Ekonomik Veriler Bilgisi
    this.savunmabutcesi,
    this.disborc,
    this.altinvedovizrezerv,
    this.satinalmagucuparitesi,
    //Coğrafi Veriler Bilgisi
    this.toprakbuyuklugu,
    this.kiyiseridiuzunlugu,
    this.paylasilansinirlar,
    this.suyollari,
  );
}

List<ulkebilgi> almanya_sayfasi = [
  ulkebilgi(
    "Avrupa",
    "Berlin",
    "Hristiyan",
    "Almanca",
    "+ 49",
    "357.386 km²",
    "EURO",
    "83 Milyon",
    "Almanya Avrupa kıtasında bulunur. Toprak büyüklüğü olarak 357.022 kilometrekarelik bir alana sahip olup 80.457.737 kişilik nüfusu ile dünyanın en kalabalık 19. ülkesidir. Almanya petrol konusunda dışa bağımlı bir ülke konumundadır. Savunma bütçesine ayırdığı 50.000.000.000 dolarlık bütçe ile dünyanın en büyük 6. savunma bütçesine sahiptir.",
    //Nüfus Bilgisi
    "80.457.737",
    "37.010.559",
    "29.608.447",
    "7.905.455",
    "212.650",
    "182.650",
    "30.000",
    //Petrol Bilgisi
    "43.410",
    "2.500.000",
    "145.400.000",
    //Kara Kuvvetleri
    "245",
    "4.583",
    "108",
    "0",
    "38",
    //Hava Kuvvetleri
    "712",
    "128",
    "71",
    "26",
    "386",
    "56",
    //Deniz Kuvvetleri
    "80",
    "0",
    "9",
    "0",
    "5",
    "6",
    "0",
    "12",
    //Lojistik Veriler
    "45.900.000",
    "629",
    "13",
    "644.480",
    "41.981",
    "539",
    //Ekonomik Veriler
    "50.000.000.000",
    "5.326.000.000.000",
    "200.100.000.000",
    "4.300.500.000.000",
    //Coğrafi Veriler
    "357.022",
    "2.389",
    "3.694",
    "7.467",
  ),
];

List<ulkebilgi> arnavutluk_sayfasi = [
  ulkebilgi(
    "Avrupa",
    "Tiran",
    "İslam",
    "Arnavutça",
    "+ 355",
    "28.748 km²",
    "Leki",
    "2,86 Milyon",
    "Arnavutluk Avrupa kıtasında bulunur. Toprak büyüklüğü olarak 28.748 kilometrekarelik bir alana sahip olup 3.057.220 kişilik nüfusu ile dünyanın en kalabalık 122. ülkesidir. Arnavutluk petrol konusunda dışa bağımlı bir ülke konumundadır. Savunma bütçesine ayırdığı 250.000.000 dolarlık bütçe ile dünyanın en büyük 106. savunma bütçesine sahiptir.",
    //Nüfus Bilgisi
    "3.057.220",
    "1.519.438",
    "1.291.523",
    "61.593",
    "10.000",
    "10.000",
    "0",
    //Petrol Bilgisi
    "16.000",
    "42.500",
    "168.300.000",
    //Kara Kuvvetleri
    "0",
    "467",
    "0",
    "0",
    "0",
    //Hava Kuvvetleri
    "19",
    "0",
    "0",
    "0",
    "19",
    "0",
    //Deniz Kuvvetleri
    "38",
    "0",
    "0",
    "0",
    "0",
    "0",
    "19",
    "0",
    //Lojistik Veriler
    "1.407.000",
    "60",
    "4",
    "18.000",
    "339",
    "4",
    //Ekonomik Veriler
    "250.000.000",
    "9.505.000.000",
    "3.590.000.000",
    "38.000.000.000",
    //Coğrafi Veriler
    "28.748",
    "362",
    "691",
    "41",
  ),
];
List<ulkebilgi> avusturya_sayfasi = [
  ulkebilgi(
    "Avrupa",
    "Viyana",
    "Hristiyan",
    "Almanca",
    "+ 43",
    "83.879 km2",
    "Euro",
    "8,859 Milyon",
    "Avusturya Avrupa kıtasında bulunur. Toprak büyüklüğü olarak 83.871 kilometrekarelik bir alana sahip olup 8.793.370 kişilik nüfusu ile dünyanın en kalabalık 88. ülkesidir. Avusturya petrol konusunda dışa bağımlı bir ülke konumundadır. Savunma bütçesine ayırdığı 3.380.000.000 dolarlık bütçe ile dünyanın en büyük 56. savunma bütçesine sahiptir.",
    //Nüfus Bilgisi
    "8.793.370",
    "4.017.691",
    "3.615.922",
    "95.099",
    "172.500",
    "22.500",
    "150.000",
    //Petrol Bilgisi
    "14.260",
    "215.000",
    "43.000.000",
    //Kara Kuvvetleri
    "56",
    "467",
    "33",
    "0",
    "0",
    //Hava Kuvvetleri
    "120",
    "15",
    "11",
    "32",
    "62",
    "0",
    //Deniz Kuvvetleri
    "0",
    "0",
    "0",
    "0",
    "0",
    "0",
    "0",
    "0",
    //Lojistik Veriler
    "3.997.000",
    "0",
    "4",
    "110.778",
    "6.399",
    "52",
    //Ekonomik Veriler
    "3.380.000.000",
    "630.800.000.000",
    "21.570.000.000",
    "447.000.000.000",
    //Coğrafi Veriler
    "83.871",
    "0",
    "2.524",
    "0",
  ),
];
List<ulkebilgi> azerbaycan_sayfasi = [
  ulkebilgi(
    "Asya",
    "Bakü",
    "Hristiyan",
    "Azerice",
    "+ 994",
    "86.600 km2",
    "Manat",
    "10,02 Milyon",
    "Azerbaycan Asya kıtasında bulunur. Toprak büyüklüğü olarak 86.600 kilometrekarelik bir alana sahip olup 10.046.516 kişilik nüfusu ile dünyanın en kalabalık 82. ülkesidir. Azerbaycan petrol konusunda kendine yeten bir ülkedir. Savunma bütçesine ayırdığı 2.805.000.000 dolarlık bütçe ile dünyanın en büyük 60. savunma bütçesine sahiptir.",
    //Nüfus Bilgisi
    "10.046.516",
    "5.042.346",
    "3.781.760",
    "151.270",
    "426.000",
    "126.000",
    "300.000",
    //Petrol Bilgisi
    "789.300",
    "180.000",
    "7.000.000.000",
    //Kara Kuvvetleri
    "570",
    "1.451",
    "187",
    "227",
    "162",
    //Hava Kuvvetleri
    "147",
    "17",
    "1",
    "29",
    "88",
    "17",
    //Deniz Kuvvetleri
    "31",
    "0",
    "1",
    "0",
    "0",
    "4",
    "13",
    "7",
    //Lojistik Veriler
    "5.118.000",
    "313",
    "1",
    "52.942",
    "2.918",
    "37",
    //Ekonomik Veriler
    "2.805.000.000",
    "17.410.000.000",
    "6.681.000.000",
    "172.000.000.000",
    //Coğrafi Veriler
    "86.6000",
    "713",
    "2.468",
    "0",
  ),
];
List<ulkebilgi> belarus_sayfasi = [
  ulkebilgi(
    "Avrupa",
    "Minsk",
    "Ortadoks Hristiyan",
    "Belarusça",
    "+ 375",
    "207.600 km2",
    "Beyaz Rusya Rublesi",
    "9,467 Milyon",
    "Belarus Avrupa kıtasında bulunur. Toprak büyüklüğü olarak 207.600 kilometrekarelik bir alana sahip olup 9.527.543 kişilik nüfusu ile dünyanın en kalabalık 86. ülkesidir. Belarus petrol konusunda dışa bağımlı bir ülke konumundadır. Savunma bütçesine ayırdığı 623.702.800 dolarlık bütçe ile dünyanın en büyük 92. savunma bütçesine sahiptir.",
    //Nüfus Bilgisi
    "9.527.543",
    "4.982.905",
    "3.697.316",
    "99.828",
    "345.500",
    "45.500",
    "300.000",
    //Petrol Bilgisi
    "32.000",
    "190.000",
    "198.000.000",
    //Kara Kuvvetleri
    "532",
    "1.560",
    "482",
    "228",
    "238",
    //Hava Kuvvetleri
    "202",
    "39",
    "4",
    "28",
    "63",
    "21",
    //Deniz Kuvvetleri
    "0",
    "0",
    "0",
    "0",
    "0",
    "0",
    "0",
    "0",
    //Lojistik Veriler
    "4.381.00",
    "5",
    "1",
    "86.392",
    "5.537",
    "65",
    //Ekonomik Veriler
    "623.702.800",
    "39.920.000.000",
    "7.315.000.000",
    "178.066.000.000",
    //Coğrafi Veriler
    "207.600",
    "0",
    "3.599",
    "2.500",
  ),
];
List<ulkebilgi> belcika_sayfasi = [
  ulkebilgi(
    "Avrupa",
    "Brüksel",
    "Katolik",
    "Felemenkçe",
    "+ 32",
    "30.689 km²",
    "Euro",
    "11,46 Milyon",
    "Belçika Avrupa kıtasında bulunur. Toprak büyüklüğü olarak 30.528 kilometrekarelik bir alana sahip olup 11.570.762 kişilik nüfusu ile dünyanın en kalabalık 71. ülkesidir. Belçika petrol konusunda dışa bağımlı bir ülke konumundadır. Savunma bütçesine ayırdığı 4.921.000.000 dolarlık bütçe ile dünyanın en büyük 44. savunma bütçesine sahiptir.",
    //Nüfus Bilgisi
    "11.570.762",
    "4.833.107",
    "3.841.305",
    "115.239",
    "35.000",
    "30.000",
    "5.000",
    //Petrol Bilgisi
    "0",
    "645.000",
    "0",
    //Kara Kuvvetleri
    "0",
    "984",
    "0",
    "0",
    "0",
    //Hava Kuvvetleri
    "148",
    "43",
    "12",
    "64",
    "29",
    "0",
    //Deniz Kuvvetleri
    "17",
    "0",
    "2",
    "0",
    "0",
    "0",
    "2",
    "5",
    //Lojistik Veriler
    "5.324.000",
    "192",
    "8",
    "153.595",
    "3.233",
    "41",
    //Ekonomik Veriler
    "4.921.000.000",
    "1.281.000.000.000",
    "26.160.000.000",
    "535.000.000.000",
    //Coğrafi Veriler
    "30.528",
    "67",
    "1.297",
    "2.043",
  ),
];
List<ulkebilgi> birlesik_krallik_sayfasi = [
  ulkebilgi(
    "Avrupa",
    "Londra",
    "Hristiyan",
    "İngilizce",
    "+ 44",
    "242.495 km²",
    "Sterlin",
    "66,65 Milyon",
    "Birleşik Krallık Avrupa kıtasında bulunur. Toprak büyüklüğü olarak 243.610 kilometrekarelik bir alana sahip olup 65.105.246 kişilik nüfusu ile dünyanın en kalabalık 22. ülkesidir. Birleşik Krallık petrol konusunda dışa bağımlı bir ülke konumundadır. Savunma bütçesine ayırdığı 55.100.000.000 dolarlık bütçe ile dünyanın en büyük 5. savunma bütçesine sahiptir.",
    //Nüfus Bilgisi
    "65.105.246",
    "29.948.413",
    "23.958.731",
    "745.117",
    "275.660",
    "192.660",
    "83.000",
    //Petrol Bilgisi
    "910.500",
    "1.600.000",
    "2.564.000.000",
    //Kara Kuvvetleri
    "227",
    "5.000",
    "89",
    "126",
    "35",
    //Hava Kuvvetleri
    "733",
    "133",
    "44",
    "241",
    "312",
    "49",
    //Deniz Kuvvetleri
    "88",
    "2",
    "13",
    "6",
    "0",
    "10",
    "22",
    "13",
    //Lojistik Veriler
    "33.500.000",
    "1.570",
    "16",
    "394.428",
    "16.454",
    "460",
    //Ekonomik Veriler
    "55.100.000.000",
    "8.126.000.000.000",
    "150.800.000.000",
    "2.974.000.000.000",
    //Coğrafi Veriler
    "243.610",
    "12.429",
    "443",
    "3.200",
  ),
];
List<ulkebilgi> bosna_hersek_sayfasi = [
  ulkebilgi(
    "Avrupa",
    "Saraybosna",
    "Müslüman",
    "Bosnakça",
    "+ 387",
    "51.197 km²",
    "Mark",
    "3,301 Milyon",
    "Bosna Hersek Avrupa kıtasında bulunur. Toprak büyüklüğü olarak 51.197 kilometrekarelik bir alana sahip olup 3.849.891 kişilik nüfusu ile dünyanın en kalabalık 115. ülkesidir. Bosna ve Hersek petrol konusunda dışa bağımlı bir ülke konumundadır. Savunma bütçesine ayırdığı 165.000.000 dolarlık bütçe ile dünyanın en büyük 115. savunma bütçesine sahiptir.",
    //Nüfus Bilgisi
    "3.849.891",
    "2.394.632",
    "1.994.729",
    "51.863",
    "10.500",
    "10.500",
    "0",
    //Petrol Bilgisi
    "0",
    "32.500",
    "0",
    //Kara Kuvvetleri
    "320",
    "332",
    "24",
    "837",
    "143",
    //Hava Kuvvetleri
    "19",
    "0",
    "0",
    "0",
    "19",
    "0",
    //Deniz Kuvvetleri
    "0",
    "0",
    "0",
    "0",
    "0",
    "0",
    "0",
    "0",
    //Lojistik Veriler
    "1.510.000",
    "0",
    "5",
    "22.926",
    "601",
    "24",
    //Ekonomik Veriler
    "165.000.000",
    "10.870.000.000",
    "6.474.000.000",
    "45.000.000.000",
    //Coğrafi Veriler
    "51.197",
    "20",
    "1.543",
    "0",
  ),
];
List<ulkebilgi> bulgaristan_sayfasi = [
  ulkebilgi(
    "Avrupa",
    "Sofya",
    "Hristiyan",
    "Bulgarca",
    "+ 359",
    "110.994 km²",
    "Leva",
    "7 Milyon",
    "Bulgaristan Avrupa kıtasında bulunur. Toprak büyüklüğü olarak 110.880 kilometrekarelik bir alana sahip olup 7.057.504 kişilik nüfusu ile dünyanın en kalabalık 94. ülkesidir. Bulgaristan petrol konusunda dışa bağımlı bir ülke konumundadır. Savunma bütçesine ayırdığı 1.079.000.000 dolarlık bütçe ile dünyanın en büyük 79. savunma bütçesine sahiptir.",
    //Nüfus Bilgisi
    "7.057.504",
    "3.278.916",
    "2.682.154",
    "65.445",
    "50.000",
    "30.000",
    "20.000",
    //Petrol Bilgisi
    "1.000",
    "115.000",
    "15.000.000",
    //Kara Kuvvetleri
    "710",
    "2.000",
    "506",
    "350",
    "192",
    //Hava Kuvvetleri
    "63",
    "13",
    "5",
    "20",
    "25",
    "2",
    //Deniz Kuvvetleri
    "29",
    "0",
    "4",
    "0",
    "3",
    "0",
    "4",
    "18",
    //Lojistik Veriler
    "2.581.000",
    "80",
    "2",
    "19.512",
    "4.152",
    "68",
    //Ekonomik Veriler
    "1.079.000.000",
    "42.060.000.000",
    "28.380.000.000",
    "158.000.000.000",
    //Coğrafi Veriler
    "110.880",
    "354",
    "1.806",
    "470",
  ),
];
