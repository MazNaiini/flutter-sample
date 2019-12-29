import 'package:flutter/material.dart';

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
