import 'package:coffee_app/core/app_export.dart';
import 'package:coffee_app/presentation/flash_screen_one_screen/models/flash_screen_one_model.dart';

/// A controller class for the FlashScreenOneScreen.
///
/// This class manages the state of the FlashScreenOneScreen, including the
/// current flashScreenOneModelObj
class FlashScreenOneController extends GetxController {
  Rx<FlashScreenOneModel> flashScreenOneModelObj = FlashScreenOneModel().obs;
}
