import 'dart:convert';

List<ScanModel> ScanModelFromJson(String str) =>
    List<ScanModel>.from(json.decode(str).map((x) => ScanModel.fromJson(x)));

String ScanModelToJson(List<ScanModel> data) =>
    json.encode(List<dynamic>.from(data.map((x) => x.toJson())));

class ScanModel {
  ScanModel({
    this.id,
    this.type,
    required this.value,
  }) {
    final splitValue = value.split(':');

    type = 'default';

    _types.forEach((key, value) {
      if (key == splitValue[0]) {
        type = value;
      }
    });

    if (splitValue.length > 1) {
      value = splitValue[1];
    }
  }

  int? id;
  String? type;
  String value;

  final Map<String, String> _types = {
    'web': 'web',
    'geo': 'geo',
    'video': 'youtube',
    'img': 'image',
    'txt': 'text'
  };

  factory ScanModel.fromJson(Map<String, dynamic> json) => ScanModel(
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
