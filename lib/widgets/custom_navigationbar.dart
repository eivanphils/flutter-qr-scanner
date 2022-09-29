import 'package:flutter/material.dart';

import 'package:provider/provider.dart';

import 'package:flutter_qr_scanner/providers/ui_provider.dart';

class CustomNavigationBar extends StatelessWidget {
  const CustomNavigationBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final uiProvider = Provider.of<UiProvider>(context);

    return BottomNavigationBar(
      currentIndex: uiProvider.selectedMenuOpt,
      elevation: 0,
      onTap: (int i) => uiProvider.selectedMenuOpt = i,
      items: const [
        BottomNavigationBarItem(
          icon: Icon(Icons.map_rounded),
          label: 'Mapa'
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.wifi_rounded),
          label: 'Imagen'
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.wifi_rounded),
          label: 'Web'
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.wifi_rounded),
          label: 'Youtube'
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.wifi_rounded),
          label: 'Texto'
        ),
      ]
    );
  }
}
