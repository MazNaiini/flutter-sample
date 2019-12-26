import 'package:flutter/material.dart';
import 'package:flutter_sample/MoreInfo/MoreInfoWidget.dart';

class MainListWidget extends StatefulWidget {
  MainListWidget({Key key, this.title}) : super(key: key);

  final String title;

  @override _MainListState createState() => _MainListState();
}

class _MainListState extends State<MainListWidget> {

  void _incrementCounter() {
      Navigator.push(context, MaterialPageRoute<Null>(
        builder: (BuildContext context) {
          return MoreInfoWidget();
        },
        fullscreenDialog: true
      ));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
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
        onPressed: _incrementCounter,
        tooltip: 'More Info',
        child: Icon(Icons.info),
        backgroundColor: Colors.blueAccent,
      ), 
      backgroundColor: Colors.white,
    );
  }
}