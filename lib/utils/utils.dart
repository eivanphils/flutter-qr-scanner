import 'package:flutter/material.dart';

import 'package:url_launcher/url_launcher_string.dart';

import 'package:flutter_qr_scanner/widgets/widgets.dart';
import 'package:flutter_qr_scanner/models/scan_model.dart';

Future<void> launchScan(BuildContext context, ScanModel scan) async {
  if (scan.type == 'web' || scan.type == 'video') {
    if (!await launchUrlString(
      scan.value,
      mode: LaunchMode.inAppWebView,
    )) {
      throw Exception('Could not launch ${scan.value}');
    }
  }

  if (scan.type == 'img') {
    final body = ClipRRect(
      borderRadius: BorderRadius.circular(20),
      child: FadeInImage(
        placeholder: const AssetImage('assets/no-image.jpg'),
        image: NetworkImage(scan.value),
        height: 140,
        width: 140,
        fit: BoxFit.contain,
      ),
    );

    showMyDialog(context, 'Imagen', body);
  }

  if (scan.type == 'text') {
    final body = Text(scan.value);
    showMyDialog(context, 'Texto', body);
  }

  if (scan.type == 'geo') {
    Navigator.pushNamed(context, 'mapa', arguments: scan);
  }
}
