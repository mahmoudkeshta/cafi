import '../controller/search_shop_controller.dart';
import 'package:get/get.dart';

/// A binding class for the SearchShopScreen.
///
/// This class ensures that the SearchShopController is created when the
/// SearchShopScreen is first loaded.
class SearchShopBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => SearchShopController());
  }
}
