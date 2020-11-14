import 'dart:convert';

class HomeDoctor {
  HomeDoctor({
    this.id,
    this.name,
    this.specialist,
    this.photos,
  });

  String id;
  String name;
  String specialist;
  String photos;

  factory HomeDoctor.fromRawJson(String str) =>
      HomeDoctor.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  HomeDoctor.fromJson(Map<String, dynamic> json) {
    this.id = json["id"] as String;
    this.name = json["name"] as String;
    this.specialist = json["specialist"] as String;
    this.photos = json["photos"] as String;
  }

  Map<String, dynamic> toJson() => {
        "id": id,
        "nama": name,
        "specialist": specialist,
        "photos": photos,
      };
}
