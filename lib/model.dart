import 'dart:convert';

List<TestingModel> TestingModelFromJson(String str) => List<TestingModel>.from(json.decode(str).map((x) => TestingModel.fromJson(x)));

String TestingModelToJson(List<TestingModel> data) => json.encode(List<dynamic>.from(data.map((x) => x.toJson())));

class TestingModel {
  int id;
  String name;
  String image;
  DateTime creationAt;
  DateTime updatedAt;

  TestingModel({
    required this.id,
    required this.name,
    required this.image,
    required this.creationAt,
    required this.updatedAt,
  });

  factory TestingModel.fromJson(Map<String, dynamic> json) => TestingModel(
    id: json["id"],
    name: json["name"],
    image: json["image"],
    creationAt: DateTime.parse(json["creationAt"]),
    updatedAt: DateTime.parse(json["updatedAt"]),
  );

  Map<String, dynamic> toJson() => {
    "id": id,
    "name": name,
    "image": image,
    "creationAt": creationAt.toIso8601String(),
    "updatedAt": updatedAt.toIso8601String(),
  };
}
