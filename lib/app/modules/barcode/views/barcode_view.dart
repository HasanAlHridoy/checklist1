import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import 'package:get/get.dart';

import '../controllers/barcode_controller.dart';
import 'package:flutter_barcode_scanner/flutter_barcode_scanner.dart';

class BarcodeView extends GetView<BarcodeController> {

  @override
  Widget build(BuildContext context) {
    Get.put(BarcodeController());

    return Scaffold(
      appBar: AppBar(
        title: Text('BarcodeView'),
        centerTitle: true,
        backgroundColor: Colors.orange,
      ),
      body:  Center(
          child:Column(
            children: [
              ElevatedButton(onPressed: () {
                controller.scanBar();
              }, child:Text('Scan Barcode'),

              ),
              Text(controller.scannedBarCode)

            ],
          )
        ),
    );
  }
}
