import 'package:flutter/material.dart';

import 'package:provider/provider.dart';

import 'package:flutter_qr_scanner/providers/scan_list_provider.dart';
import 'package:flutter_qr_scanner/providers/ui_provider.dart';

import 'package:flutter_qr_scanner/screens/screens.dart';
import 'package:flutter_qr_scanner/widgets/widgets.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final scanListProvider =
        Provider.of<ScanListProvider>(context, listen: false);

    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        title: const Text('Historial'),
        actions: [
          IconButton(
              onPressed: () => scanListProvider.deleteAllScans(),
              icon: const Icon(Icons.delete_forever))
        ],
      ),
      body: const _HomePageBody(),
      floatingActionButton: const ScanButton(),
      floatingActionButtonLocation: FloatingActionButtonLocation.endFloat,
      bottomNavigationBar: const CustomNavigationBar(),
    );
  }
}

class _HomePageBody extends StatelessWidget {
  const _HomePageBody({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final uiProvider = Provider.of<UiProvider>(context);
    final scanListProvider =
        Provider.of<ScanListProvider>(context, listen: false);

    const List<String> tabs = ['geo', 'img', 'web', 'video', 'text'];
    const List<IconData> icons = [
      Icons.map_rounded,
      Icons.image,
      Icons.web,
      Icons.smart_display,
      Icons.text_format
    ];

    final indexTab = uiProvider.selectedMenuOpt;

    scanListProvider.loadScansByType(tabs[indexTab]);

    return uiProvider.selectedMenuOpt == 0
        ? const MapsScreen()
        : AddressScreen(icon: icons[indexTab]);
  }
}
