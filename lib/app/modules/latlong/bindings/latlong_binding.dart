import 'package:get/get.dart';

import '../controllers/latlong_controller.dart';

class LatlongBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<LatlongController>(
      () => LatlongController(),
    );
  }
}
