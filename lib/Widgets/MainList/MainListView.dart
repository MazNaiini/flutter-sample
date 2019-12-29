import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter_sample/Widgets/APIJSONList/APIJSONWidget.dart';
import 'package:flutter_sample/Widgets/LocalJSONList/LocalJSONWidget.dart';

class MainListView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ListView(
      children: ListTile.divideTiles(
        context: context,
        tiles: [
          _groupHeaderTile('List -> Detail examples'),
          _SelectableTile(
            title: 'List from a localy stored JSON',
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
            onTap: () {},
          ),
          _SelectableTile(
            title: 'Stack',
            onTap: () {},
          ),
          _SelectableTile(
            title: 'Responsive',
            onTap: () {},
          ),
        ],
      ).toList(),
    );
  }

  Widget _groupHeaderTile(String title) => ListTile(
      title: Text(
        title,
        style: TextStyle(fontSize: 20),
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
  _SelectableTile({Key key, this.title, this.onTap}) : super(key: key);

  final Function onTap;
  final String title;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text(
        title ?? 'Title',
        style: TextStyle(fontSize: 20),
      ),
      onTap: onTap ?? null,
      selected: false,
    );
  }
}
