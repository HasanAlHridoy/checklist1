import 'dart:io';

import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:image_picker/image_picker.dart';

import '../controllers/image_pick_controller.dart';

class ImagePickView extends GetView<ImagePickController> {


  @override
  Widget build(BuildContext context) {
    Get.put(ImagePickController());
    return Scaffold(
      appBar: AppBar(
        title: Text('ImagePickView'),
        centerTitle: true,
      ),
      body: Padding(
        padding: EdgeInsets.all(16.0),
        child: SingleChildScrollView(
          child: Column(
            children: [
              Obx(() {
                return controller.selectedImagePath.value == ''
                    ? Text('data')
                    : Image.file(
                  File(controller.selectedImagePath.value),
                );
              }),
              ElevatedButton(
                onPressed: () {
                  controller.getImage(ImageSource.camera);
                },
                child: Text('Camera'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
