import 'package:get/get.dart';
import 'package:image_picker/image_picker.dart';

class ImagePickController extends GetxController {
  //TODO: Implement ImagePickController

  final count = 0.obs;
  var selectedImagePath = ''.obs;

  void getImage(ImageSource imageSource) async {
    final pickedImage = await ImagePicker().getImage(source: imageSource);

    if (pickedImage != null) {
      selectedImagePath.value = pickedImage.path;
    } else {
      selectedImagePath.value = pickedImage!.path;
      Get.snackbar('title', 'message', snackPosition: SnackPosition.BOTTOM);
    }
  }

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

  void increment() => count.value++;
}
