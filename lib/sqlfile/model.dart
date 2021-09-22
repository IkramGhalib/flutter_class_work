class DatabaseModel {
  final int? id;
  final String? name;
  final String? fathername;

  DatabaseModel({this.id, this.fathername, this.name});

  factory DatabaseModel.fromMap(Map<String, dynamic>json) => DatabaseModel(
        id: json["id"],
        name: json["name"],
        fathername: json["fathername"],
      );

      
  Map<String, dynamic> toMap() =>
      {"id": id, "name": name, "fathername": fathername};
}
