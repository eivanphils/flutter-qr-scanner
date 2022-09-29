import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'package:flutter_qr_scanner/providers/ui_provider.dart';

class AddressScreen extends StatelessWidget {
  const AddressScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final uiProvider = Provider.of<UiProvider>(context);
    final id = uiProvider.selectedMenuOpt;
    return Center(child: Text('Address Screen $id'));
  }
}