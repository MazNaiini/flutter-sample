import 'package:flutter/material.dart';

class LocalJSONWidget extends StatelessWidget {
  final String title;

  LocalJSONWidget({Key key, this.title}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text(this.title)),
      body: Text('The list here'),
    );
  }
}
