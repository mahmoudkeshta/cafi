import '../controller/search_shop_action_filter_tab_container_controller.dart';
import 'package:get/get.dart';

/// A binding class for the SearchShopActionFilterTabContainerScreen.
///
/// This class ensures that the SearchShopActionFilterTabContainerController is created when the
/// SearchShopActionFilterTabContainerScreen is first loaded.
class SearchShopActionFilterTabContainerBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => SearchShopActionFilterTabContainerController());
  }
}
