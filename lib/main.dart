import 'package:flutter/material.dart';

void main() => runApp(FlutterSampleApp());

class FlutterSampleApp extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Sample',
      theme: ThemeData(
        primarySwatch: Colors.purple,
      ),
      home: ListPage(title: 'List of items!'),
    );
  }
}

class ListPage extends StatefulWidget {
  ListPage({Key key, this.title}) : super(key: key);

  final String title;

  @override _ListPageState createState() => _ListPageState();
}

class _ListPageState extends State<ListPage> {
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
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: <Widget>[
            Text(
              'You have pushed the button this many times:',
            ),
            Text(
              '$_counter',
              style: Theme.of(context).textTheme.display1,
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _incrementCounter,
        tooltip: 'Increment',
        child: Icon(Icons.tv),
      ), 
    );
  }
}
