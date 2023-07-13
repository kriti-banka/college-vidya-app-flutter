import 'dart:convert';

CityModel cityModelFromJson(String str) => CityModel.fromJson(json.decode(str));

String cityModelToJson(CityModel data) => json.encode(data.toJson());

class CityModel {
  int id;
  String city;

  CityModel({
    required this.id,
    required this.city,
  });

  factory CityModel.fromJson(Map<String, dynamic> json) => CityModel(
    id: json["id"],
    city: json["city"],
  );

  Map<String, dynamic> toJson() => {
    "id": id,
    "city": city,
  };
}
