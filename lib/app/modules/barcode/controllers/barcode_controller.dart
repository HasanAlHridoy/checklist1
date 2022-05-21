import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_barcode_scanner/flutter_barcode_scanner.dart';
import 'package:get/get.dart';

class BarcodeController extends GetxController {
  //TODO: Implement BarcodeController

  var barCode = ''.obs;
  String scannedBarCode = '';

  @override
  void onInit() {
    super.onInit();
  }

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {}
  Future<void> scanBar()async{
    try{

      scannedBarCode = await FlutterBarcodeScanner.scanBarcode(
          '#2F7CEE',
          'cancel',
          true,
          ScanMode.BARCODE);

      Get.snackbar('Result', 'Bar Code'+scannedBarCode,snackPosition: SnackPosition.BOTTOM,backgroundColor: Colors.green,colorText: Colors.white);

    }
    on PlatformException{

    }
  }
}
