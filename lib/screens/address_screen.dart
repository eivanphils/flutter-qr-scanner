import 'package:flutter/material.dart';

import 'package:flutter_qr_scanner/widgets/widgets.dart';

class AddressScreen extends StatelessWidget {
  final IconData icon;
  final String typeData;

  const AddressScreen({Key? key, required this.icon, required this.typeData})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ScanList(icon: icon, typeData: typeData);
  }
}
