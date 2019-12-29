import 'package:flutter/material.dart';
import 'package:flutter_sample/Models/Entity.dart';
import 'EntityListView.dart';

class LocalJSONWidget extends StatelessWidget {
  final String title;

  LocalJSONWidget({Key key, this.title}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text(this.title)),
      body: _LocalJSONListView(),
    );
  }
}

class _LocalJSONListView extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => _LocalJSONListViewState();
}

class _LocalJSONListViewState extends State {
  @override
  Widget build(BuildContext context) {
    return FutureBuilder(
        future: DefaultAssetBundle.of(context)
            .loadString('assets/data/mocked.json'),
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
