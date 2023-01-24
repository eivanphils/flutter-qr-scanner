import 'package:flutter/material.dart';

import 'package:flutter_qr_scanner/models/scan_model.dart';

class MapScreen extends StatelessWidget {
  const MapScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final ScanModel scan = ModalRoute.of(context)!.settings.arguments as ScanModel;
    return Scaffold(
      appBar: AppBar(
        title: const Text('Coordenadas'),
      ),
      body: Center(child: Text(scan.value)),
    );
  }
}