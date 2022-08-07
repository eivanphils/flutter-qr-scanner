import 'package:flutter/material.dart';

class CustomNavigationBar extends StatelessWidget {
  const CustomNavigationBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      currentIndex: 0,
      elevation: 0,
      items: const [
        BottomNavigationBarItem(
          icon: Icon(Icons.map_rounded),
          label: 'Mapa'
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.web_asset),
          label: 'Website'
        ),
      ]
    );
  }
}
