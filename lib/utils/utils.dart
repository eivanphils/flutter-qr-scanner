import 'package:flutter/material.dart';

import 'package:url_launcher/url_launcher.dart';

import 'package:flutter_qr_scanner/models/scan_model.dart';
import 'package:url_launcher/url_launcher_string.dart';

Future<void> launchScan(BuildContext context, ScanModel scan) async {
  if (scan.type == 'web') {
    final url = 'https://${scan.value}';

    if (!await launchUrlString(
      url,
      mode: LaunchMode.inAppWebView,
    )) {
      throw Exception('Could not launch ${scan.value}');
    }
  }

  if (scan.type == 'geo') {
    Navigator.pushNamed(context, 'mapa', arguments: scan);
  }
}
