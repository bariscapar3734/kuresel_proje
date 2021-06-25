import 'package:kureselproje_app/api/views/api_views.dart';
import 'package:kureselproje_app/screens/anasayfa_routes/en_iyi_bolge_kategori/asya_askeri_gucleri.dart';
import 'package:kureselproje_app/screens/anasayfa_routes/en_iyi_bolge_kategori/asya_pasifik_gucleri.dart';
import 'package:kureselproje_app/screens/anasayfa_routes/en_iyi_bolge_kategori/avrupa_birli%C4%9Fi.dart';
import 'package:kureselproje_app/screens/anasayfa_routes/en_iyi_bolge_kategori/orta_dogu_guc.dart';
import 'package:kureselproje_app/screens/anasayfa_routes/en_iyi_bolge_kategori/perisan_korfezi.dart';

List<bolgekategoriler> bolgekategoriler_oneTabs = [
  bolgekategoriler(
    avrupa_birligi(),
  ),
  bolgekategoriler(
    OrtaDogu(),
  ),
  bolgekategoriler(
    perisan_korfezi(),
  ),
  bolgekategoriler(
    asyaGuc(),
  ),
  bolgekategoriler(
    asya_pasifikGuc(),
  ),
];

class bolgekategoriler {
  final yolu;
  bolgekategoriler(this.yolu);
}
