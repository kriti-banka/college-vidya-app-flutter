import 'dart:convert';

Banners bannersFromJson(String str) => Banners.fromJson(json.decode(str));

String bannersToJson(Banners data) => json.encode(data.toJson());

class Banners {
  int id;
  String title;
  String image;
  dynamic bannerImageLink;
  String type;
  int priority;
  int status;

  Banners({
    required this.id,
    required this.title,
    required this.image,
    this.bannerImageLink,
    required this.type,
    required this.priority,
    required this.status,
  });

  factory Banners.fromJson(Map<String, dynamic> json) => Banners(
    id: json["id"],
    title: json["title"],
    image: json["image"],
    bannerImageLink: json["banner_image_link"],
    type: json["type"],
    priority: json["priority"],
    status: json["status"],
  );

  Map<String, dynamic> toJson() => {
    "id": id,
    "title": title,
    "image": image,
    "banner_image_link": bannerImageLink,
    "type": type,
    "priority": priority,
    "status": status,
  };
}
