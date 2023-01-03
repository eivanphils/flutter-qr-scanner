import 'package:flutter/material.dart';
import 'package:flutter_qr_scanner/widgets/widgets.dart';

class MapsScreen extends StatelessWidget {
  const MapsScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const ScanList(icon: Icons.map);
  }
}
