import 'package:flutter/material.dart';

final _jsonURL = 'https://www.ma-na.co/entities_project/entities.json';

class APIJSONWidget extends StatelessWidget {
  final String title;

  APIJSONWidget({Key key, this.title}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text(this.title)),
      body: Text('The list here'),
    );
  }
}
