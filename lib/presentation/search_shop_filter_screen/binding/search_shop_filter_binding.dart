import '../controller/search_shop_filter_controller.dart';
import 'package:get/get.dart';

/// A binding class for the SearchShopFilterScreen.
///
/// This class ensures that the SearchShopFilterController is created when the
/// SearchShopFilterScreen is first loaded.
class SearchShopFilterBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => SearchShopFilterController());
  }
}
