import 'package:flutter/material.dart';
import 'package:flutter_sample/Models/Entity.dart';
import 'EntityDetail.dart';

class EntityListView extends StatelessWidget {
  final List<Entity> entities;

  EntityListView({Key key, this.entities}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scrollbar(
        child: ListView.builder(
            padding: EdgeInsets.fromLTRB(8, 16, 0, 0),
            itemCount: this.entities.length,
            itemBuilder: (context, index) {
              final entity = this.entities[index];
              return Column(
                children: <Widget>[
                  ListTile(
                    title: Text(entity.title),
                    subtitle: Text(entity.body),
                    onTap: () {
                      _presentDetail(context, entity);
                    },
                  ),
                  Divider()
                ],
              );
            }));
  }

  void _presentDetail(BuildContext context, Entity entity) {
    Navigator.push(
        context,
        MaterialPageRoute<Null>(
            builder: (BuildContext context) {
              return EntityDetail(entity: entity);
            },
            fullscreenDialog: false));
  }
}
