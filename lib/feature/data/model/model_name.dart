class Modelname {
  final String name;

  Modelname({required this.name});

  factory Modelname.fromJson(Map<String, dynamic> json) {
    return Modelname(name: json['name']);
  }
}
