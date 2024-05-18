// To parse this JSON data, do
//
//     final getApi = getApiFromJson(jsonString);

import 'dart:convert';

GetApi getApiFromJson(String str) => GetApi.fromJson(json.decode(str));

String getApiToJson(GetApi data) => json.encode(data.toJson());

class GetApi {
  String id;
  String name;
  String eEmail;
  String ePassword;
  DateTime createdAt;

  GetApi({
    required this.id,
    required this.name,
    required this.eEmail,
    required this.ePassword,
    required this.createdAt,
  });

  factory GetApi.fromJson(Map<String, dynamic> json) => GetApi(
    id: json["id"],
    name: json["name"],
    eEmail: json["e_email"],
    ePassword: json["e_password"],
    createdAt: DateTime.parse(json["created_at"]),
  );

  Map<String, dynamic> toJson() => {
    "id": id,
    "name": name,
    "e_email": eEmail,
    "e_password": ePassword,
    "created_at": createdAt.toIso8601String(),
  };
}
