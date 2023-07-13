import 'dart:convert';

UserData userDataFromJson(String str) => UserData.fromJson(json.decode(str));

String userDataToJson(UserData data) => json.encode(data.toJson());

class UserData {
  String id;
  dynamic lsqId;
  dynamic lsqIdCvTwo;
  int whichLsq;
  dynamic countryName;
  String name;
  String email;
  String mobile;
  String altEmail;
  String altMobile;
  String gender;
  String state;
  String dob;
  String age;
  dynamic campaignName;
  dynamic sourceCampaign;
  dynamic adGroupName;
  DateTime createdDateTime;
  DateTime createdDate;
  String source;
  String subSource;
  int status;
  int states;
  dynamic city;
  int course;
  dynamic specializations;

  UserData({
    required this.id,
    this.lsqId,
    this.lsqIdCvTwo,
    required this.whichLsq,
    this.countryName,
    required this.name,
    required this.email,
    required this.mobile,
    required this.altEmail,
    required this.altMobile,
    required this.gender,
    required this.state,
    required this.dob,
    required this.age,
    this.campaignName,
    this.sourceCampaign,
    this.adGroupName,
    required this.createdDateTime,
    required this.createdDate,
    required this.source,
    required this.subSource,
    required this.status,
    required this.states,
    this.city,
    required this.course,
    this.specializations,
  });

  factory UserData.fromJson(Map<String, dynamic> json) => UserData(
    id: json["id"],
    lsqId: json["lsq_id"],
    lsqIdCvTwo: json["lsq_id_cv_two"],
    whichLsq: json["which_lsq"],
    countryName: json["country_name"],
    name: json["name"],
    email: json["email"],
    mobile: json["mobile"],
    altEmail: json["alt_email"],
    altMobile: json["alt_mobile"],
    gender: json["gender"],
    state: json["state"],
    dob: json["dob"],
    age: json["age"],
    campaignName: json["campaign_name"],
    sourceCampaign: json["source_campaign"],
    adGroupName: json["ad_group_name"],
    createdDateTime: DateTime.parse(json["created_date_time"]),
    createdDate: DateTime.parse(json["created_date"]),
    source: json["source"],
    subSource: json["sub_source"],
    status: json["status"],
    states: json["states"],
    city: json["city"],
    course: json["course"],
    specializations: json["specializations"],
  );

  Map<String, dynamic> toJson() => {
    "id": id,
    "lsq_id": lsqId,
    "lsq_id_cv_two": lsqIdCvTwo,
    "which_lsq": whichLsq,
    "country_name": countryName,
    "name": name,
    "email": email,
    "mobile": mobile,
    "alt_email": altEmail,
    "alt_mobile": altMobile,
    "gender": gender,
    "state": state,
    "dob": dob,
    "age": age,
    "campaign_name": campaignName,
    "source_campaign": sourceCampaign,
    "ad_group_name": adGroupName,
    "created_date_time": createdDateTime.toIso8601String(),
    "created_date": "${createdDate.year.toString().padLeft(4, '0')}-${createdDate.month.toString().padLeft(2, '0')}-${createdDate.day.toString().padLeft(2, '0')}",
    "source": source,
    "sub_source": subSource,
    "status": status,
    "states": states,
    "city": city,
    "course": course,
    "specializations": specializations,
  };
}
