import 'package:flutter/material.dart';
import 'package:flutter_qr_scanner/widgets/widgets.dart';

class MapsScreen extends StatelessWidget {
  final String typeData;

  const MapsScreen({Key? key, required this.typeData}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ScanList(icon: Icons.map, typeData: typeData,);
  }
}
