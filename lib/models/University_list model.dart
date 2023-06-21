// // To parse this JSON data, do
// //
// //     final welcome = welcomeFromJson(jsonString);
//
import 'dart:convert';

Unilistmodel unilistmodelFromJson(String str) => Unilistmodel.fromJson(json.decode(str));

String unilistmodelToJson(Unilistmodel data) => json.encode(data.toJson());

class Unilistmodel {
  int id;
  String logo;
  String name;
  String slug;
  int type;


  Unilistmodel({
    required this.id,
    required this.logo,
    required this.name,
    required this.slug,
    required this.type,
  });

  factory Unilistmodel.fromJson(Map<String, dynamic> json) =>
      Unilistmodel(
        id: json["id"],
        logo: json["logo"],
        name: json["name"],
        slug: json["slug"],
        type: json["type"],
      );


  Map<String, dynamic> toJson() =>
      {
        "id": id,
        "logo": logo,
        "name": name,
        "slug": slug,
        "type": type,
      };


}






