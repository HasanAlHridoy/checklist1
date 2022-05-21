import 'package:get/get.dart';

import '../modules/barcode/bindings/barcode_binding.dart';
import '../modules/barcode/views/barcode_view.dart';
import '../modules/home/bindings/home_binding.dart';
import '../modules/home/views/home_view.dart';
import '../modules/image_pick/bindings/image_pick_binding.dart';
import '../modules/image_pick/views/image_pick_view.dart';
import '../modules/latlong/bindings/latlong_binding.dart';
import '../modules/latlong/views/latlong_view.dart';
import '../modules/login/bindings/login_binding.dart';
import '../modules/login/views/login_view.dart';
import '../modules/webviewapp/bindings/webviewapp_binding.dart';
import '../modules/webviewapp/views/webviewapp_view.dart';

part 'app_routes.dart';

class AppPages {
  AppPages._();

  static const INITIAL = Routes.HOME;

  static final routes = [
    GetPage(
      name: _Paths.HOME,
      page: () => HomeView(),
      binding: HomeBinding(),
    ),
    GetPage(
      name: _Paths.LOGIN,
      page: () => LoginView(),
      binding: LoginBinding(),
    ),
    GetPage(
      name: _Paths.BARCODE,
      page: () => BarcodeView(),
      binding: BarcodeBinding(),
    ),
    GetPage(
      name: _Paths.IMAGE_PICK,
      page: () => ImagePickView(),
      binding: ImagePickBinding(),
    ),
    GetPage(
      name: _Paths.WEBVIEWAPP,
      page: () => WebviewappView(),
      binding: WebviewappBinding(),
    ),
    GetPage(
      name: _Paths.LATLONG,
      page: () => LatlongView(),
      binding: LatlongBinding(),
    ),
  ];
}
