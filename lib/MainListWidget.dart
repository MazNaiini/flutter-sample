import 'package:flutter/material.dart';

class MainListWidget extends StatefulWidget {
  MainListWidget({Key key, this.title}) : super(key: key);

  final String title;

  @override _MainListState createState() => _MainListState();
}

class _MainListState extends State<MainListWidget> {
  int _counter = 10;

  void _incrementCounter() {
    setState(() {
      _counter = _counter + 5;
    });
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
              'You have pushed the button this many times:',
              style: Theme.of(context).textTheme.body1,
              maxLines: 2,
            ),
            Text(
              '$_counter',
              style: Theme.of(context).textTheme.title,
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