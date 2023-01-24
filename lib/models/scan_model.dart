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


    _types.forEach((format) {
      if (format == splitValue[0]) {
        type = format;
      }
    });

    if (splitValue.length > 1) {
      value = splitValue[1];
    }
  }

  int? id;
  String? type;
  String value;

  final List<String> _types = ['web', 'geo', 'video', 'img', 'text'];

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
