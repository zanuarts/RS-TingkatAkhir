import 'dart:convert';

class Career {
    Career({
        this.id,
        this.posisi,
        this.image,
    });

    String id;
    String posisi;
    String image;

  factory Career.fromRawJson(String str) =>
    Career.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  Career.fromJson(Map<String, dynamic> json) {
    this.id = json["id"] as String;
    this.posisi = json["posisi"] as String;
    this.image = json["image"] as String;
  }

  Map<String, dynamic> toJson() => {
        "id": id,
        "posisi": posisi,
        "image": image,
      };
}
