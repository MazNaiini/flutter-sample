import 'package:flutter/material.dart';
import 'package:flutter_sample/Widgets/MainList/MainListWidget.dart';

void main() => runApp(SampleApp());

class SampleApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Sample',
      theme: ThemeData(
        brightness: Brightness.light,
        primarySwatch: Colors.indigo,
      ),
      home: MainListWidget(title: 'Flutter Demo'),
    );
  }
}
