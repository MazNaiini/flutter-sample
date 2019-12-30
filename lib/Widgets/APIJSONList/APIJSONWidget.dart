import 'package:flutter/material.dart';
import 'package:flutter_sample/Models/Entity.dart';
import 'package:flutter_sample/Widgets/LocalJSONList/EntityListView.dart';
import 'package:flutter_sample/Services/EnitiesAPI.dart';

class APIJSONWidget extends StatelessWidget {
  final String title;

  APIJSONWidget({Key key, this.title}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text(this.title)),
      body: _APIJSONListView(),
    );
  }
}

class _APIJSONListView extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => _APIJSONListViewState();
}

class _APIJSONListViewState extends State {
  @override
  Widget build(BuildContext context) {
    return FutureBuilder(
        future: EntitiesAPI.fetchEntities(),
        builder: (context, snapshot) {
          List<Entity> parsedEntities = Entity.parsedEntities(snapshot.data);
          return parsedEntities.isEmpty
              ? Center(child: CircularProgressIndicator())
              : EntityListView(
                  entities: parsedEntities,
                );
        });
  }
}
