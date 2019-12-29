import 'dart:convert';

class Entity {
  final String title;
  final String body;
  final int id;
  final int userId;

  Entity({this.title, this.body, this.id, this.userId});

  factory Entity.fromJSON(Map<String, dynamic> json) {
    return new Entity(
        title: json['title'],
        body: json['body'],
        id: json['id'],
        userId: json['userId']);
  }

  static List<Entity> parsedEntities(String jsonString) {
    if (jsonString == null) {
      return [];
    }
    final parsedJSON = json.decode(jsonString).cast<Map<String, dynamic>>();
    final mappedEntities =
        parsedJSON.map<Entity>((json) => Entity.fromJSON(json));
    return mappedEntities.toList();
  }
}
