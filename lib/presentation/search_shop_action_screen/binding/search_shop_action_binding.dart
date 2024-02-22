import '../controller/search_shop_action_controller.dart';
import 'package:get/get.dart';

/// A binding class for the SearchShopActionScreen.
///
/// This class ensures that the SearchShopActionController is created when the
/// SearchShopActionScreen is first loaded.
class SearchShopActionBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => SearchShopActionController());
  }
}
