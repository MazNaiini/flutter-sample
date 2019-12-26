import 'package:flutter/material.dart';
import 'package:flutter_sample/MoreInfo/MoreInfoWidget.dart';

class MainListWidgetStateLess extends StatelessWidget {
  MainListWidgetStateLess({Key key, this.title}) : super(key: key);

  final String title;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(this.title),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              'The list content will be here',
              style: Theme.of(context).textTheme.body1
            )
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          _presentMoreInfo(context);
        },
        tooltip: 'More Info',
        child: Icon(Icons.info),
        backgroundColor: Colors.blueAccent,
      ), 
      backgroundColor: Colors.white,
    );
  }

  void _presentMoreInfo(BuildContext context) {
    Navigator.push(context, MaterialPageRoute<Null>(
      builder: (BuildContext context) {
        return MoreInfoWidget();
      },
      fullscreenDialog: true
    ));
  }

}