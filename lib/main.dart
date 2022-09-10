import 'package:flutter/material.dart';

import 'package:flutter_qr_scanner/screens/screens.dart';
import 'package:flutter_qr_scanner/theme/app_theme.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'QR Scanner',
      initialRoute: 'home',
      routes: {
        'home': (_) => const HomeScreen(),
        'mapa': (_) => const MapaScreen()
      },
      theme: AppTheme.lightTheme,
    );
  }
}