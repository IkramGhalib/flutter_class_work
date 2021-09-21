class DatabseModel {
  final int? id;
  final String? name;
  final String? fathername;

  DatabseModel({this.id, this.fathername, this.name});

  factory DatabseModel.fromMap(Map<String, dynamic> json) => DatabseModel(
        id: json["id"],
        name: json["name"],
        fathername: json["fathername"],
      );
  Map<String, dynamic> toMap() =>
      {"id": id, "name": name, "fathername": fathername};
}
