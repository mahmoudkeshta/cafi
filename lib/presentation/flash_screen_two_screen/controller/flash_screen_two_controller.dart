import 'package:coffee_app/core/app_export.dart';
import 'package:coffee_app/presentation/flash_screen_two_screen/models/flash_screen_two_model.dart';

/// A controller class for the FlashScreenTwoScreen.
///
/// This class manages the state of the FlashScreenTwoScreen, including the
/// current flashScreenTwoModelObj
class FlashScreenTwoController extends GetxController {
  Rx<FlashScreenTwoModel> flashScreenTwoModelObj = FlashScreenTwoModel().obs;
}
