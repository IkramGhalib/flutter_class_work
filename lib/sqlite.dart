import 'package:flutter/material.dart';
import 'package:flutter_day_1/sqlfile/db.dart';

import 'sqlfile/model.dart';
import 'package:flutter_day_1/sqlfile/model.dart';
import 'package:flutter_day_1/sqlfile/datacard.dart';

class Sqlite extends StatefulWidget {
  const Sqlite({Key? key}) : super(key: key);

  @override
  _SqliteState createState() => _SqliteState();
}

class _SqliteState extends State<Sqlite> {
  TextEditingController name = TextEditingController();
  TextEditingController fathername = TextEditingController();
  late DBHelper db;
  bool fetching = true;
  List<DatabaseModel> datas = [];
  int currentIndex = 0;

  @override
  void initState() {
    super.initState();
    db = DBHelper();
    dataget();
    // getData2();
  }

  void dataget() async {
    datas = await db.showData();
    setState(() {
      fetching = false;
    });
  }

  // id="name",name="name"
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          centerTitle: false,
          title: Text("Sqlite App"),
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: () {
            myFormBox();
          },
          child: Icon(Icons.add),
        ),
        body: fetching
            ? ListView.builder(
                itemCount: datas.length,
                itemBuilder: (context, index) => DataCard(
                      data: datas[index],
                      edit: edit,
                      index: index,
                      delete: delete,
                    ))
            : Center(
                child: CircularProgressIndicator(),
              )
        // :ListView.builder(itemCount:datas.length,
        //     itemBuilder: (context,index)=>DataCard(data:datas[index])),
        );
  }

  void myFormBox() async {
    return showDialog(
        context: context,
        builder: (BuildContext context) {
          return AlertDialog(
            content: Container(
              height: 400,
              width: 400,
              child: Column(
                children: [
                  TextFormField(
                    controller: name,
                    decoration: InputDecoration(
                        labelText: "Enter Name",
                        hintText: "Name",
                        hintStyle:
                            TextStyle(fontSize: 22, color: Colors.purple),
                        border: OutlineInputBorder()),
                  ),
                  SizedBox(
                    height: 40.0,
                  ),
                  TextFormField(
                    controller: fathername,
                    decoration: InputDecoration(
                        labelText: "Enter Father Name",
                        hintText: "Father Name",
                        hintStyle:
                            TextStyle(fontSize: 22, color: Colors.purple),
                        border: OutlineInputBorder()),
                  )
                ],
              ),
            ),
            actions: [
              ElevatedButton(
                  onPressed: () {
                    DatabaseModel Data = DatabaseModel(
                        name: name.text, fathername: fathername.text);
                    // yyprint(name);
                    db.insert(Data);
                    setState(() {
                      name.clear();
                      fathername.clear();
                      Navigator.pop(context);
                    });
                  },
                  child: Text("Add Record"))
            ],
          );
        });
  }

  // update Alert box

  void myFormBoxupdate() async {
    return showDialog(
        context: context,
        builder: (BuildContext context) {
          return AlertDialog(
            content: Container(
              height: 400,
              width: 400,
              child: Column(
                children: [
                  TextFormField(
                    controller: name,
                    decoration: InputDecoration(
                        labelText: "Enter Name",
                        hintText: "Name",
                        hintStyle:
                            TextStyle(fontSize: 22, color: Colors.purple),
                        border: OutlineInputBorder()),
                  ),
                  SizedBox(
                    height: 40.0,
                  ),
                  TextFormField(
                    controller: fathername,
                    decoration: InputDecoration(
                        labelText: "Enter Father Name",
                        hintText: "Father Name",
                        hintStyle:
                            TextStyle(fontSize: 22, color: Colors.purple),
                        border: OutlineInputBorder()),
                  )
                ],
              ),
            ),
            actions: [
              ElevatedButton(
                  onPressed: () {
                    DatabaseModel newData = datas[currentIndex];

                    newData.name = name.text;
                    newData.fathername = fathername.text;
                    db.update(newData, newData.id!);
                  },
                  child: Text("Update Record"))
            ],
          );
        });
  }

  void edit(index) {
    currentIndex = index;
    name.text = datas[index].name;
    fathername.text = datas[index].fathername;
    myFormBoxupdate();
  }

  void delete(index) {
    db.delete(datas[index].id!);
    setState(() {
      datas.removeAt(index);
    });
  }
}
