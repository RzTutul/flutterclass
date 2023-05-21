// To parse this JSON data, do
//
//     final postResponse = postResponseFromMap(jsonString);

import 'dart:convert';

class PostResponse {
  int? userId;
  int? id;
  String? title;
  String? body;

  PostResponse({
    this.userId,
    this.id,
    this.title,
    this.body,
  });

  factory PostResponse.fromJson(String str) => PostResponse.fromMap(json.decode(str));

  String toJson() => json.encode(toMap());

  factory PostResponse.fromMap(Map<String, dynamic> json) => PostResponse(
    userId: json["userId"],
    id: json["id"],
    title: json["title"],
    body: json["body"],
  );

  Map<String, dynamic> toMap() => {
    "userId": userId,
    "id": id,
    "title": title,
    "body": body,
  };
}
