import '../controller/buy_gift_card_action_controller.dart';
import 'package:get/get.dart';

/// A binding class for the BuyGiftCardActionScreen.
///
/// This class ensures that the BuyGiftCardActionController is created when the
/// BuyGiftCardActionScreen is first loaded.
class BuyGiftCardActionBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => BuyGiftCardActionController());
  }
}
