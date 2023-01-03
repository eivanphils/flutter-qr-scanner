import 'package:flutter/material.dart';

import 'package:flutter_qr_scanner/widgets/widgets.dart';

class AddressScreen extends StatelessWidget {
  final IconData icon;
  const AddressScreen({Key? key, required this.icon}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ScanList(icon: icon);
  }
}
