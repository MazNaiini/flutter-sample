import 'package:flutter/material.dart';
import 'package:flutter_sample/MoreInfo/MoreInfoWidget.dart';

class MainListWidget extends StatelessWidget {
  MainListWidget({Key key, this.title}) : super(key: key);

  final String title;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(this.title),
      ),
      body: _body(context),
      floatingActionButton: _floatingActionButton(context),
      backgroundColor: Colors.white,
    );
  }

  Widget _body(BuildContext context)  => Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text('The Test list content will be here',
                style: Theme.of(context).textTheme.body1)
          ],
        ),
      );

  FloatingActionButton _floatingActionButton(BuildContext context) => FloatingActionButton(
        onPressed: () {
          _presentMoreInfo(context);
        },
        tooltip: 'More Info',
        child: Icon(Icons.info),
        backgroundColor: Colors.blueAccent,
      );

  void _presentMoreInfo(BuildContext context) {
    Navigator.push(
        context,
        MaterialPageRoute<Null>(
            builder: (BuildContext context) {
              return MoreInfoWidget();
            },
            fullscreenDialog: true));
  }
}
