import 'dart:convert';

List<Welcome> welcomeFromJson(String str) =>
    List<Welcome>.from(json.decode(str).map((x) => Welcome.fromJson(x)));

String welcomeToJson(List<Welcome> data) =>
    json.encode(List<dynamic>.from(data.map((x) => x.toJson())));

class Welcome {
  Welcome({
    required this.id,
    required this.type,
    required this.value,
  }) {
    if (value.contains(_types[value].toString())) {
      type = _types[value].toString();
    } else {
      type = 'default';
    }
  }

  int id;
  String type;
  String value;

  final Map<String, String> _types = {
    'web:': 'web',
    'geo:': 'geo',
    'video:': 'youtube',
    'img': 'image',
    'txt': 'text'
  };

  factory Welcome.fromJson(Map<String, dynamic> json) => Welcome(
        id: json["id"],
        type: json["type"],
        value: json["value"],
      );

  Map<String, dynamic> toJson() => {
        "id": id,
        "type": type,
        "value": value,
      };
}
