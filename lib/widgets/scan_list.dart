import 'package:flutter/material.dart';
import 'package:flutter_qr_scanner/utils/utils.dart';

import 'package:provider/provider.dart';

import 'package:flutter_qr_scanner/providers/scan_list_provider.dart';

class ScanList extends StatelessWidget {
  final IconData icon;
  final String typeData;

  const ScanList({Key? key, required this.icon, required this.typeData})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    print('typeData $typeData');

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
                subtitle: Text('id: ${scan.id}'),
                trailing:
                    const Icon(Icons.keyboard_arrow_right, color: Colors.grey),
                onTap: () {
                  // TODO: si typeData es img abrir modal y mostrar la imagen
                  // TODO: si typeData es web mostrar la web
                  // TODO: si typeData es txt mostrar el texto en un alert o otro elemento
                  // TODO: si typeData es video mostrarlo en un modal
                  // TODO: si typeData es geo mostral el mapa con las coordenadas
                  print('click ${scan.id}');
                  launchScan(context, scan);
                }),
          );
        });
  }
}
