import 'package:flutter/material.dart';

import 'package:provider/provider.dart';

import 'package:flutter_qr_scanner/providers/scan_list_provider.dart';

class MapsScreen extends StatelessWidget {
  const MapsScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final scanListProvider = Provider.of<ScanListProvider>(context);
    final scans = scanListProvider.scans;
    return ListView.builder(
        itemCount: scans.length,
        itemBuilder: (_, int i) {
          final scanData = scanListProvider.scans[i];
          return ListTile(
            leading: const Icon(Icons.map),
            title: Text(scanData.value),
            subtitle: Text('id: ${scanData.id}'),
            trailing:
                const Icon(Icons.keyboard_arrow_right, color: Colors.grey),
            onTap: () => print('click ${scanData.id}'),
          );
        });
  }
}
