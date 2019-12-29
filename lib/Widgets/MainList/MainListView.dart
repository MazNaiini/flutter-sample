import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter_sample/Widgets/APIJSONList/APIJSONWidget.dart';
import 'package:flutter_sample/Widgets/LocalJSONList/LocalJSONWidget.dart';

class MainListView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ListView(
      padding: EdgeInsets.only(top: 8),
      children: [
        _groupHeaderTile('List / Detail examples'),
        _SelectableTile(
          title: 'List from a localy stored JSON',
          color: Colors.green,
          onTap: () {
            _present(
                LocalJSONWidget(
                  title: 'List From A Localy Stored JSON',
                ),
                context);
          },
        ),
        _SelectableTile(
          title: 'List from a network API provided JSON',
          color: Colors.lightBlue,
          onTap: () {
            _present(
                APIJSONWidget(
                  title: 'List From API Provided JSON',
                ),
                context);
          },
        ),
        _groupHeaderTile('Some basic layouts'),
        _SelectableTile(
          title: 'Grid View',
          color: Colors.amber,
          onTap: () {},
        ),
        _SelectableTile(
          title: 'Stack',
          color: Colors.brown,
          onTap: () {},
        ),
        _SelectableTile(
          title: 'Responsive',
          color: Colors.indigoAccent,
          onTap: () {},
        ),
      ],
    );
  }

  Widget _groupHeaderTile(String title) => ListTile(
      title: Text(
        title,
        style: TextStyle(fontSize: 20),
        textAlign: TextAlign.center,
      ),
      enabled: false);

  void _present(Widget widget, BuildContext context) {
    Navigator.push(
        context,
        MaterialPageRoute<Null>(
            builder: (BuildContext context) {
              return widget;
            },
            fullscreenDialog: false));
  }
}

class _SelectableTile extends StatelessWidget {
  final Function onTap;
  final String title;
  final Color color;

  _SelectableTile({Key key, this.title, this.onTap, this.color})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
        padding: EdgeInsets.fromLTRB(16, 0, 16, 0),
        height: 120,
        child: Card(
            color: color,
            elevation: 3,
            child: InkWell(
                onTap: onTap,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Text(
                      title ?? 'Title',
                      style: TextStyle(fontSize: 20),
                      textAlign: TextAlign.center,
                      maxLines: 2,
                    ),
                  ],
                ))));
  }
}
