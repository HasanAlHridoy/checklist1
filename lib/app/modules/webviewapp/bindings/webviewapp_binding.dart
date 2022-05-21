import 'package:get/get.dart';

import '../controllers/webviewapp_controller.dart';

class WebviewappBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<WebviewappController>(
      () => WebviewappController(),
    );
  }
}
