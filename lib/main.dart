import 'package:flutter/material.dart';
import 'MainListWidget.dart';

void main() => runApp(SampleApp());

class SampleApp extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Sample',
      theme: ThemeData(
        primarySwatch: Colors.indigo,
      ),
      home: MainListWidget(title: 'List of items!'),
    );
  }
}