import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/latlong_controller.dart';

class LatlongView extends GetView<LatlongController> {
  @override
  Widget build(BuildContext context) {
    Get.put(LatlongController());
    return Scaffold(
      appBar: AppBar(
        title: Text('LatlongView'),
        centerTitle: true,
      ),
      body: Column(
        children: [
          Obx(() {
            return Text(
              controller.latitude.value,
              style: TextStyle(fontSize: 20),
            );
          }),
          SizedBox(
            height: 16.0,
          ),
          Obx(() {
            return Text(
              controller.longitude.value,
              style: TextStyle(fontSize: 20),
            );
          }),
        ],
      ),
    );
  }
}
