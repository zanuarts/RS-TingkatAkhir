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
  
  factory HomeDoctor.fromRawJson(String str) => HomeDoctor.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory HomeDoctor.fromJson(Map<String, dynamic> json) => HomeDoctor(
        id: json["id"],
        name: json["nama"],
        specialist: json["specialist"],
        photos: json["photo"]
      );

  Map<String, dynamic> toJson() => {
        "id": id,
        "nama": name,
        "specialist": specialist,
        "photos": photos,
      };
}
