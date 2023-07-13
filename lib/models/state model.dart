import 'dart:convert';

Statemodel statemodelFromJson(String str) => Statemodel.fromJson(json.decode(str));

String statemodelToJson(Statemodel data) => json.encode(data.toJson());

class Statemodel {
  int id;
  String state;

  Statemodel({
    required this.id,
    required this.state,
  });

  factory Statemodel.fromJson(Map<String, dynamic> json) => Statemodel(
    id: json["id"],
    state: json["state"],
  );

  Map<String, dynamic> toJson() => {
    "id": id,
    "state": state,
  };
}
