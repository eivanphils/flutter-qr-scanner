import 'package:flutter/material.dart';
import 'package:flutter_qr_scanner/models/scan_model.dart';

import 'package:provider/provider.dart';

import 'package:flutter_qr_scanner/providers/db_provider.dart';
import 'package:flutter_qr_scanner/providers/ui_provider.dart';

import 'package:flutter_qr_scanner/screens/screens.dart';
import 'package:flutter_qr_scanner/widgets/widgets.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        title: const Text('Historial'),
        actions: [
          IconButton(onPressed: () {}, icon: const Icon(Icons.delete_forever))
        ],
      ),
      body: const _HomePageBody(),
      floatingActionButton: const ScanButton(),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      bottomNavigationBar: const CustomNavigationBar(),
    );
  }
}

class _HomePageBody extends StatelessWidget {
  const _HomePageBody({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final uiProvider = Provider.of<UiProvider>(context);

    // TODO: leer la base de datos
    final tempScan = ScanModel(value: 'web:http://wadadsd');
    DBProvider.db.newScan(tempScan);

    const List<Widget> tabs = [MapsScreen(), AddressScreen()];

    return tabs[uiProvider.selectedMenuOpt];
  }
}
