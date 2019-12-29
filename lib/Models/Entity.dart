class Entity {
  final String title;
  final String body;
  final String id;
  final String userId;

  Entity({this.title, this.body, this.id, this.userId});

  factory Entity.fromJSON(Map<String, dynamic> json) {
    return new Entity(
        title: json['title'],
        body: json['body'],
        id: json['id'],
        userId: json['userId']);
  }
}
