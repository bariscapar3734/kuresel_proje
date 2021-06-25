import 'package:kureselproje_app/screens/anasayfa_routes/populer_kategori/gfp_endeksi.dart';
import 'package:kureselproje_app/screens/anasayfa_routes/populer_kategori/gucleri_karsilastir.dart';
import 'package:kureselproje_app/screens/anasayfa_routes/populer_kategori/koalisyon_olustur.dart';
import 'package:kureselproje_app/screens/anasayfa_routes/populer_kategori/onceki_siralamalar.dart';
import 'package:kureselproje_app/screens/anasayfa_routes/populer_kategori/uluslar_endeksi.dart';

List<populerkategoriler> populerkategoriler_oneTabs = [
  populerkategoriler(
    gfp_endeksi(),
  ),
  populerkategoriler(
    uluslar_endeksi(),
  ),
  populerkategoriler(
    gucleri_karsilastir(),
  ),
  populerkategoriler(
    koasliyon_olustur(),
  ),
  populerkategoriler(
    onceki_siralamalar(),
  ),
];

class populerkategoriler {
  final yolu;
  populerkategoriler(this.yolu);
}
