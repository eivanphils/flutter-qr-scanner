import 'dart:convert';

import 'package:google_maps_flutter/google_maps_flutter.dart' show LatLng;

List<ScanModel> scanModelFromJson(String str) =>
    List<ScanModel>.from(json.decode(str).map((x) => ScanModel.fromJson(x)));

String scanModelToJson(List<ScanModel> data) =>
    json.encode(List<dynamic>.from(data.map((x) => x.toJson())));

class ScanModel {
  ScanModel({
    this.id,
    this.type,
    required this.value,
  }) {
    final splitValue = value.split(':-');


    for (var format in _types) {
      if (format == splitValue[0]) {
        type = format;
      }
    }

    if (splitValue.length > 1) {
      value = splitValue[1];
    }
  }

  int? id;
  String? type;
  String value;

  LatLng getLatLng() {
    List<String> latLng = value.split(',');
    double lat = double.parse(latLng[0]);
    double lng = double.parse(latLng[1]);

    return LatLng(lat, lng);
  }

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
