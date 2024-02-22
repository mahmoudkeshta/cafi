import '../controller/search_items_filter_controller.dart';
import 'package:get/get.dart';

/// A binding class for the SearchItemsFilterScreen.
///
/// This class ensures that the SearchItemsFilterController is created when the
/// SearchItemsFilterScreen is first loaded.
class SearchItemsFilterBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => SearchItemsFilterController());
  }
}
