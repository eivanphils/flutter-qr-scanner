import 'package:flutter/material.dart';

import 'package:provider/provider.dart';

import 'package:flutter_barcode_scanner/flutter_barcode_scanner.dart';
import 'package:flutter_qr_scanner/providers/scan_list_provider.dart';

class ScanButton extends StatelessWidget {
  const ScanButton({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final scanListProvider = Provider.of<ScanListProvider>(context);
    return FloatingActionButton(
        elevation: 0,
        child: const Icon(Icons.qr_code),
        onPressed: () async {
          String barcodeScanRes = await FlutterBarcodeScanner.scanBarcode(
              '#3D8BEF', 'Cancelar', false, ScanMode.QR);
          print(barcodeScanRes);
          scanListProvider.newScan(barcodeScanRes);
        });
  }
}
