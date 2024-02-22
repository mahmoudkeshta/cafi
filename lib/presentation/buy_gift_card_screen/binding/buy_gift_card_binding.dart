import '../controller/buy_gift_card_controller.dart';
import 'package:get/get.dart';

/// A binding class for the BuyGiftCardScreen.
///
/// This class ensures that the BuyGiftCardController is created when the
/// BuyGiftCardScreen is first loaded.
class BuyGiftCardBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => BuyGiftCardController());
  }
}
