import 'dart:convert';

class AlbumResponse {
  int? userId;
  int? id;
  String? title;

  AlbumResponse({
    this.userId,
    this.id,
    this.title,
  });

  factory AlbumResponse.fromJson(String str) => AlbumResponse.fromMap(json.decode(str));

  String toJson() => json.encode(toMap());

  factory AlbumResponse.fromMap(Map<String, dynamic> json) => AlbumResponse(
    userId: json["userId"],
    id: json["id"],
    title: json["title"],
  );

  Map<String, dynamic> toMap() => {
    "userId": userId,
    "id": id,
    "title": title,
  };
}
