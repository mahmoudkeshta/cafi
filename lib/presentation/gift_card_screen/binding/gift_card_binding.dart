import '../controller/gift_card_controller.dart';
import 'package:get/get.dart';

/// A binding class for the GiftCardScreen.
///
/// This class ensures that the GiftCardController is created when the
/// GiftCardScreen is first loaded.
class GiftCardBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => GiftCardController());
  }
}
