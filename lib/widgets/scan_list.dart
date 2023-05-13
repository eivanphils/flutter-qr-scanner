import 'package:flutter/material.dart';

import 'package:provider/provider.dart';

import 'package:flutter_qr_scanner/utils/utils.dart';
import 'package:flutter_qr_scanner/providers/scan_list_provider.dart';

class ScanList extends StatelessWidget {
  final IconData icon;
  final String typeData;

  const ScanList({Key? key, required this.icon, required this.typeData})
      : super(key: key);

  @override
  Widget build(BuildContext context) {

    final scanListProvider = Provider.of<ScanListProvider>(context);
    final scans = scanListProvider.scans;
    return ListView.builder(
        itemCount: scans.length,
        itemBuilder: (_, int i) {
          final scan = scans[i];
          return Dismissible(
            key: UniqueKey(),
            direction: DismissDirection.endToStart,
            background: Container(color: Colors.red),
            onDismissed: (DismissDirection direction) {
              Provider.of<ScanListProvider>(context, listen: false)
                  .deleteScanById(scan.id!);
            },
            child: ListTile(
                leading: Icon(icon),
                title: Text(scan.value),
                subtitle: Text('id: ${scan.id} - type: ${scan.type}'),
                trailing:
                    const Icon(Icons.keyboard_arrow_right, color: Colors.grey),
                onTap: () {
                  launchScan(context, scan);
                }),
          );
        });
  }
}
