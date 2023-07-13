import 'dart:convert';

Experts expertsFromJson(String str) => Experts.fromJson(json.decode(str));

String expertsToJson(Experts data) => json.encode(data.toJson());

class Experts {
  String name;
  String profileImage;
  String slug;
  int experience;
  String designation;
  double rating;

  Experts({
    required this.name,
    required this.profileImage,
    required this.slug,
    required this.experience,
    required this.designation,
    required this.rating,
  });

  factory Experts.fromJson(Map<String, dynamic> json) => Experts(
    name: json["name"],
    profileImage: json["profile_image"],
    slug: json["slug"],
    experience: json["experience"],
    designation: json["designation"],
    rating: json["rating"]?.toDouble(),
  );

  Map<String, dynamic> toJson() => {
    "name": name,
    "profile_image": profileImage,
    "slug": slug,
    "experience": experience,
    "designation": designation,
    "rating": rating,
  };
}
