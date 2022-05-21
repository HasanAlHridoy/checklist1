import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:shikhor/app/modules/image_pick/views/image_pick_view.dart';
import 'package:shikhor/app/modules/latlong/views/latlong_view.dart';
import 'package:shikhor/app/modules/webviewapp/views/webviewapp_view.dart';
import '../../../../widgets/bottom_navigation.dart';
import '../../../../widgets/reuable_card.dart';
import '../../barcode/views/barcode_view.dart';
import '../../login/views/login_view.dart';
import '../controllers/home_controller.dart';

class HomeView extends GetView<HomeController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Color(0xffFAF9F6),
        body: Center(
          child: SingleChildScrollView(
            child: Padding(
              padding: const EdgeInsets.only(top: 48.0, right: 16, left: 16),
              child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    SizedBox(
                      height: 24.0,
                    ),
                    Row(
                      children: [
                        Expanded(
                          child: ReusableCard(
                            iconLabel: 'Barcode Scanner',
                            onPressed: () => Get.to(
                              BarcodeView(),
                            ),
                          ),
                        ),
                        SizedBox(
                          width: 28.0,
                        ),
                        Expanded(
                          child: ReusableCard(
                            onPressed: () {
                              Get.to(ImagePickView());
                            },
                            iconLabel: 'Camera',
                          ),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 28.0,
                    ),
                    Row(
                      children: [
                        Expanded(
                          child: ReusableCard(
                            onPressed: () {
                              Get.to(WebviewappView());
                            },
                            iconLabel: 'WebView',
                          ),
                        ),
                        SizedBox(
                          width: 28.0,
                        ),
                        Expanded(
                          child: ReusableCard(
                            iconLabel: 'Login',
                            onPressed: () => Get.to(
                              LoginView(),
                            ),
                          ),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 28.0,
                    ),
                    Container(
                      width: double.infinity,
                      child: ReusableCard(
                        iconLabel: 'Location',
                        onPressed: () {
                          Get.to(LatlongView());
                        },
                      ),
                    ),
                    SizedBox(
                      width: 28.0,
                    ),
                  ]),
            ),
          ),
        ),
        bottomNavigationBar: BottomNavigation());
  }
}
