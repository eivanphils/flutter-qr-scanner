import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'package:flutter_qr_scanner/providers/scan_list_provider.dart';

class AddressScreen extends StatelessWidget {
  final IconData icon;
  const AddressScreen({
    Key? key,
    required this.icon
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final scanListProvider = Provider.of<ScanListProvider>(context);
    final scans = scanListProvider.scans;

    return ListView.builder(
        itemCount: scans.length,
        itemBuilder: (_, int i) {
          final scan = scans[i];

          return ListTile(
            leading: Icon(icon),
            title: Text(scan.value),
            subtitle: Text('id: ${scan.type}'),
            trailing: Icon(
              Icons.keyboard_arrow_right,
              color: Colors.grey,
            ),
            onTap: () => print('click ${scan.type}'),
          );
        });
  }
}
