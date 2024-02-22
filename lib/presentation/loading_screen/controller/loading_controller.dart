import 'package:coffee_app/core/app_export.dart';
import 'package:coffee_app/presentation/loading_screen/models/loading_model.dart';

import '../../flash_screen/flash_screen.dart';
import '../../flash_screen_two_screen/flash_screen_two_screen.dart';

/// A controller class for the LoadingScreen.
///
/// This class manages the state of the LoadingScreen, including the
/// current loadingModelObj
class LoadingController extends GetxController {
  Rx<LoadingModel> loadingModelObj = LoadingModel().obs;
  @override
  void onInit() {
    super.onInit();
    // Delay navigation to the next screen after 10 seconds
    Future.delayed(Duration(seconds: 10), () {
      // Navigate to the next screen
      Get.off(FlashScreenTwoScreen());//flashScreenTwoScreen
      // Use Get.offAll() if you want to remove all the previous routes from the stack
    });
  }
}

