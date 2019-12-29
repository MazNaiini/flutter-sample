import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

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
            onTap: () {},
          ),
          _SelectableTile(
            title: 'List form a api provided JSON',
            onTap: () {},
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
