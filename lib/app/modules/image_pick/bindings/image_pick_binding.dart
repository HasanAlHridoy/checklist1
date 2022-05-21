import 'package:get/get.dart';

import '../controllers/image_pick_controller.dart';

class ImagePickBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<ImagePickController>(
      () => ImagePickController(),
    );
  }
}
