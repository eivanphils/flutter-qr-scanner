import 'package:flutter/material.dart';
import 'package:flutter_qr_scanner/models/models.dart';
import 'package:flutter_qr_scanner/providers/db_provider.dart';

class ScanListProvider extends ChangeNotifier {
  List<ScanModel> scans = [];
  String selectedType = 'web';

  void newScan(String value) async {
    final newScan = ScanModel(value: value);
    final id = await DBProvider.db.newScan(newScan);

    newScan.id = id;

    scans.add(newScan);
    notifyListeners();
  }

  void loadScans() async {
    final scans = await DBProvider.db.getAllScans();
    this.scans = [...scans];
    notifyListeners();
  }

  void loadScansByType(String type) async {
    final scans = await DBProvider.db.getScanByType(type);
    this.scans = [...scans];
    selectedType = type;
    notifyListeners();
  }

  void deleteAllScans() async {
    await DBProvider.db.deleteAllScan();
    scans = [];
    notifyListeners();
  }

  void deleteScanById(int id) async {
    await DBProvider.db.deleteScan(id);
    loadScansByType(selectedType);
  }
}
