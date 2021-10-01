class DatabaseModel {
  final int? id;
  String name;
  String fathername;

  DatabaseModel({this.id, required this.fathername, required this.name});

  factory DatabaseModel.fromMap(Map<String, dynamic>json) => DatabaseModel(
        id: json["id"],
        name: json["name"],
        fathername: json["fathername"],
      );

      
  Map<String, dynamic> toMap() =>
      {"id": id, "name": name, "fathername": fathername};
}
