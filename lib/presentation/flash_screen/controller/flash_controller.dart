import 'package:coffee_app/core/app_export.dart';
import 'package:coffee_app/presentation/flash_screen/models/flash_model.dart';

/// A controller class for the FlashScreen.
///
/// This class manages the state of the FlashScreen, including the
/// current flashModelObj
class FlashController extends GetxController {
  Rx<FlashModel> flashModelObj = FlashModel().obs;
}
