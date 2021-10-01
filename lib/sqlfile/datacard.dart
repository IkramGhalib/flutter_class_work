import 'package:flutter/material.dart';
import 'package:flutter_day_1/sqlfile/model.dart';

class DataCard extends StatelessWidget {
  const DataCard(
      {Key? key, required this.data, required this.edit, required this.index,required this.delete})
      : super(key: key);
  final DatabaseModel data;
  final Function edit;
  final int index;
  final Function delete;

  @override
  Widget build(BuildContext context) {
    return Card(
      child: ListTile(
        leading: CircleAvatar(
            child: IconButton(
          onPressed: () {
            edit(index);
          },
          icon: Icon(Icons.edit),
        )),
        title: Text(data.name),
        subtitle: Text(data.fathername),
        trailing: CircleAvatar(
            child: IconButton(
                onPressed: () {
                  delete(index);
                },
                icon: Icon(Icons.delete))),
      ),
    );
  }
}
