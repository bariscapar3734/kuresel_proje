import 'package:kureselproje_app/screens/anasayfa_routes/populer_kategori/gfp_endeksi.dart';

List<harfsiralamaA> index1A = [
  harfsiralamaA(
    "https://firebasestorage.googleapis.com/v0/b/kureselproje-final.appspot.com/o/flags%2Fafganistan.jpg?alt=media&token=8aea7a93-f3f5-4af2-8bca-c9189dd42643",
    "Afganistan",
    gfp_endeksi(),
  ),
  harfsiralamaA(
    "https://firebasestorage.googleapis.com/v0/b/kureselproje-final.appspot.com/o/flags%2Falmanya.jpg?alt=media&token=bf7ddba2-3652-49b2-84f9-8e616e6f6d15",
    "Almanya",
    gfp_endeksi(),
  ),
  harfsiralamaA(
    "https://firebasestorage.googleapis.com/v0/b/kureselproje-final.appspot.com/o/flags%2Famerika.jpg?alt=media&token=95f70103-005b-4af3-b5e1-101dadcea682",
    "Amerika Birleşik Devletleri",
    gfp_endeksi(),
  ),
  harfsiralamaA(
    "https://firebasestorage.googleapis.com/v0/b/kureselproje-final.appspot.com/o/flags%2Fangola.jpg?alt=media&token=f62b1a15-0d32-4829-b534-30e3b2a87dc9",
    "Angola",
    gfp_endeksi(),
  ),
  harfsiralamaA(
    "https://firebasestorage.googleapis.com/v0/b/kureselproje-final.appspot.com/o/flags%2Farjantin.jpg?alt=media&token=0d06eb28-e3fe-413c-be0a-415b91b7c925",
    "Arjantin",
    gfp_endeksi(),
  ),
  harfsiralamaA(
    "https://firebasestorage.googleapis.com/v0/b/kureselproje-final.appspot.com/o/flags%2Farnavutluk.jpg?alt=media&token=e52a5cb8-1d3b-4029-a953-9ff7a523210a",
    "Arnavutluk",
    gfp_endeksi(),
  ),
  harfsiralamaA(
    "https://firebasestorage.googleapis.com/v0/b/kureselproje-final.appspot.com/o/flags%2Favustralya.jpg?alt=media&token=fef04c9f-3c39-4010-ab99-4e87c6428bb8",
    "Avustralya",
    gfp_endeksi(),
  ),
  harfsiralamaA(
    "https://firebasestorage.googleapis.com/v0/b/kureselproje-final.appspot.com/o/flags%2Favusturya.jpg?alt=media&token=ba160073-3a4d-41e6-9c80-9d1210ea3091",
    "Avusturya",
    gfp_endeksi(),
  ),
  harfsiralamaA(
    "https://firebasestorage.googleapis.com/v0/b/kureselproje-final.appspot.com/o/flags%2Fazerbaycan.png?alt=media&token=9ab83631-929a-4f94-89d7-e2b56c5b7ac4",
    "Azerbaycan",
    gfp_endeksi(),
  ),
];
List<harfsiralamaB> index1B = [
  harfsiralamaB(
    "https://firebasestorage.googleapis.com/v0/b/kureselproje-final.appspot.com/o/flags%2Fbanglades.jpg?alt=media&token=76c38a28-967f-4c9a-96d6-70e22ec2e47f",
    "Bangladeş",
    gfp_endeksi(),
  ),
  harfsiralamaB(
    "https://firebasestorage.googleapis.com/v0/b/kureselproje-final.appspot.com/o/flags%2Fbelarus.jpg?alt=media&token=4fecc681-02a7-4bb1-8b28-00c47a5cfbc9",
    "Belarus",
    gfp_endeksi(),
  ),
  harfsiralamaB(
    "https://firebasestorage.googleapis.com/v0/b/kureselproje-final.appspot.com/o/flags%2Fbelcika.jpg?alt=media&token=b3200eb1-09cd-4d1b-ad3d-9448e5ce96b5",
    "Belçika",
    gfp_endeksi(),
  ),
  harfsiralamaB(
    "https://firebasestorage.googleapis.com/v0/b/kureselproje-final.appspot.com/o/flags%2Fbirlesikarapemirlikleri.jpg?alt=media&token=30e1621d-9d5e-48e4-b42b-a31eb245e500",
    "Birleşik Arap Emirlikleri",
    gfp_endeksi(),
  ),
  harfsiralamaB(
    "https://firebasestorage.googleapis.com/v0/b/kureselproje-final.appspot.com/o/flags%2Fbirlesikkrallik.jpg?alt=media&token=28d5d985-c406-4c50-9f8d-b85c5e5183a7",
    "Birleşik Krallık",
    gfp_endeksi(),
  ),
  harfsiralamaB(
    "https://firebasestorage.googleapis.com/v0/b/kureselproje-final.appspot.com/o/flags%2Fbosnahersek.jpg?alt=media&token=2d1daaeb-000e-4041-863e-34a885bdff0c",
    "Bosna Hersek",
    gfp_endeksi(),
  ),
  harfsiralamaB(
    "https://firebasestorage.googleapis.com/v0/b/kureselproje-final.appspot.com/o/flags%2Fbrezilya.jpg?alt=media&token=8bdd75ad-1de2-4cd5-8d13-5eceacda001b",
    "Brezilya",
    gfp_endeksi(),
  ),
  harfsiralamaB(
    "https://firebasestorage.googleapis.com/v0/b/kureselproje-final.appspot.com/o/flags%2Fbulgaristan.jpg?alt=media&token=b235cf21-eb1b-45e5-9ecc-aed496b282a1",
    "Bulgaristan",
    gfp_endeksi(),
  ),
];

class harfsiralamaA {
  String bayrak;
  String ulkeadi;
  final yolu;

  harfsiralamaA(this.bayrak, this.ulkeadi, this.yolu);
}

class harfsiralamaB {
  String bayrak;
  String ulkeadi;
  final yolu;

  harfsiralamaB(this.bayrak, this.ulkeadi, this.yolu);
}
