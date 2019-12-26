import 'package:flutter/material.dart';
import 'ClippedRoundedCornerLogo.dart';

class MoreInfoWidget extends StatelessWidget {

  @override 
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('More info about this demo'),
        backgroundColor: Colors.pink[900]
      ),
      body: Container(
        child: Column(children: <Widget>[
          ClippedRoundedCornerLogo(
            logoPath: _companyLogoPath,
            width: 175,
            height: 175,
            cornerRadius: 64,
            padding: 16,
            ),
          SizedBox(height: 32),
          Container(
            child: Text(_companyTitle, style: TextStyle(fontSize: 40)),
            padding: new EdgeInsets.only(left: 16, right: 16)
          ),
          SizedBox(height: 30),
          Text(_descriptionString)
        ],
        mainAxisAlignment: MainAxisAlignment.center
        ),
        padding: new EdgeInsets.only(left: 24, right: 24, top: 0, bottom: 0),
      ),
      backgroundColor: Colors.green[300]
    );
  }

  final String _descriptionString = '''
  High quality code cross platform apps. This demo app is developed using the Flutter platform. The features shown in this app include basic layout and navigation in Flutter. The app runs on the iOS (iPhone & iPad) and Android (Android phone and tablets). For your app development needs please contact us at: maz@ma-na.co''';
  final String _companyTitle = 'MaNa & Co AB';
  final String _companyLogoPath = 'assets/images/logo.png';
}