import 'package:flutter/material.dart';

class MoreInfoWidget extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('More info about this demo'),
        backgroundColor: Colors.pink[900]
      ),
      backgroundColor: Colors.yellow[100]
    );
  }
}