import 'package:flutter/material.dart';
import 'package:flutter_sample/Models/Entity.dart';

class EntityDetail extends StatelessWidget {
  final Entity entity;

  EntityDetail({Key key, this.entity}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text(this.entity.title),
        ),
        body: Container(
          padding: EdgeInsets.all(24),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Text(
                this.entity.title,
                style: TextStyle(fontSize: 32), 
                textAlign: TextAlign.center,
              ),
              SizedBox(
                height: 32,
              ),
              Text(
                this.entity.body,
                style: TextStyle(fontSize: 17),
                textAlign: TextAlign.center,
              )
            ],
          ),
        ));
  }
}
