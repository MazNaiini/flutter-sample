import 'package:flutter/material.dart';
import 'package:flutter_sample/MainList/MainListWidgetStateless.dart';

void main() => runApp(SampleApp());

class SampleApp extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Sample',
      theme: ThemeData(
        primarySwatch: Colors.indigo,
      ),
      home: MainListWidgetStateLess(title: 'List of items!'),
    );
  }
}