

import 'dart:convert';

List<Domain> domainFromJson(String str) => List<Domain>.from(json.decode(str).map((x) => Domain.fromJson(x)));

String domainToJson(List<Domain> data) => json.encode(List<dynamic>.from(data.map((x) => x.toJson())));

class Domain {
  int id;
  String name;
  int active;
  List<Course> courses;

  Domain({
    required this.id,
    required this.name,
    required this.active,
    required this.courses,
  });

  factory Domain.fromJson(Map<String, dynamic> json) => Domain(
    id: json["id"],
    name: json["name"],
    active: json["active"],
    courses: List<Course>.from(json["courses"].map((x) => Course.fromJson(x))),
  );

  Map<String, dynamic> toJson() => {
    "id": id,
    "name": name,
    "active": active,
    "courses": List<dynamic>.from(courses.map((x) => x.toJson())),
  };
}

class Course {
  int id;
  String name;
  String displayName;
  String slug;
  String icon;
  String duration;
  int universityCount;
  int status;
  List<Specialization> specializations;
  String? metaTitle;
  String metaDescription;
  String? feeSchema;

  Course({
    required this.id,
    required this.name,
    required this.displayName,
    required this.slug,
    required this.icon,
    required this.duration,
    required this.universityCount,
    required this.status,
    required this.specializations,
    this.metaTitle,
    required this.metaDescription,
    this.feeSchema,
  });

  factory Course.fromJson(Map<String, dynamic> json) => Course(
    id: json["id"],
    name: json["name"],
    displayName: json["display_name"],
    slug: json["slug"],
    icon: json["icon"],
    duration: json["duration"],
    universityCount: json["university_count"],
    status: json["status"],
    specializations: List<Specialization>.from(json["specializations"].map((x) => Specialization.fromJson(x))),
    metaTitle: json["meta_title"],
    metaDescription: json["meta_description"],
    feeSchema: json["fee_schema"],
  );

  Map<String, dynamic> toJson() => {
    "id": id,
    "name": name,
    "display_name": displayName,
    "slug": slug,
    "icon": icon,
    "duration": duration,
    "university_count": universityCount,
    "status": status,
    "specializations": List<dynamic>.from(specializations.map((x) => x.toJson())),
    "meta_title": metaTitle,
    "meta_description": metaDescription,
    "fee_schema": feeSchema,
  };
}

class Specialization {
  int id;
  String name;
  String displayName;
  String icon;
  String slug;
  int universityCount;
  int status;

  Specialization({
    required this.id,
    required this.name,
    required this.displayName,
    required this.icon,
    required this.slug,
    required this.universityCount,
    required this.status,
  });

  factory Specialization.fromJson(Map<String, dynamic> json) => Specialization(
    id: json["id"],
    name: json["name"],
    displayName: json["display_name"],
    icon: json["icon"],
    slug: json["slug"],
    universityCount: json["university_count"],
    status: json["status"],
  );

  Map<String, dynamic> toJson() => {
    "id": id,
    "name": name,
    "display_name": displayName,
    "icon": icon,
    "slug": slug,
    "university_count": universityCount,
    "status": status,
  };
}
