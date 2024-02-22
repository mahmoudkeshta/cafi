import '../controller/gift_card_code_controller.dart';
import 'package:get/get.dart';

/// A binding class for the GiftCardCodeScreen.
///
/// This class ensures that the GiftCardCodeController is created when the
/// GiftCardCodeScreen is first loaded.
class GiftCardCodeBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => GiftCardCodeController());
  }
}
