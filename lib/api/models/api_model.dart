// To parse this JSON data, do
//
//     final gucsirasi = gucsirasiFromJson(jsonString);

import 'dart:convert';

List<Gucsirasi> gucsirasiFromJson(String str) =>
    List<Gucsirasi>.from(json.decode(str).map((x) => Gucsirasi.fromJson(x)));

String gucsirasiToJson(List<Gucsirasi> data) =>
    json.encode(List<dynamic>.from(data.map((x) => x.toJson())));

class Gucsirasi {
  Gucsirasi({
    required this.sira,
    required this.ulkead,
    required this.images,
    required this.guc,
  });

  int sira;
  String ulkead;
  String images;
  String guc;

  factory Gucsirasi.fromJson(Map<String, dynamic> json) => Gucsirasi(
        sira: json["sira"],
        ulkead: json["ulkead"],
        images: json["images"],
        guc: json["guc"],
      );

  Map<String, dynamic> toJson() => {
        "sira": sira,
        "ulkead": ulkead,
        "images": images,
        "guc": guc,
      };
}
