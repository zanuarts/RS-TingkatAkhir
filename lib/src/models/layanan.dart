import 'package:meta/meta.dart';
import 'dart:convert';

class Layanan {
  Layanan({
    @required this.id,
    @required this.namaLayanan,
    @required this.deskripsi,
  });

  int id;
  String namaLayanan;
  String deskripsi;

  factory Layanan.fromRawJson(String str) => Layanan.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory Layanan.fromJson(Map<String, dynamic> json) => Layanan(
        id: json["id"],
        namaLayanan: json["nama_layanan"],
        deskripsi: json["deskripsi"],
      );

  Map<String, dynamic> toJson() => {
        "id": id,
        "nama_layanan": namaLayanan,
        "deskripsi": deskripsi,
      };
}
